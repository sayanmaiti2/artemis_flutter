import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddFamilyScreen extends StatefulWidget {
  final Function addMemberCallback;
  AddFamilyScreen(this.addMemberCallback);

  @override
  _AddFamilyScreenState createState() => _AddFamilyScreenState();
}

class _AddFamilyScreenState extends State<AddFamilyScreen> {
  String newMemberName;
  DateTime newMemberDOB;
  String newMemberBloodGroup;
  Function addMemberCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30144e),
      child: Container(
        height: MediaQuery.of(context).copyWith().size.height * 0.65,
        decoration: BoxDecoration(
          color: Color(0xff6a2c70),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Add Family Member",
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                color: Color(0xffe3fdfd),
                fontSize: 25,
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).copyWith().size.width * 0.95,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  labelText: 'Name',
                ),
                onChanged: (newText) {
                  newMemberName = newText;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).copyWith().size.width * 0.95,
              height: 80,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1.0, color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Date of Birth',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        newMemberDOB == null
                            ? 'Pick a Date'
                            : newMemberDOB.toString().split(' ')[0],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      RaisedButton(
                        child: Text('Select'),
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          ).then((newDate) {
                            setState(() {
                              newMemberDOB = newDate;
                            });
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).copyWith().size.width * 0.95,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  labelText: 'Blood Group',
                ),
                onChanged: (newText) {
                  newMemberBloodGroup = newText;
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                widget.addMemberCallback(
                    newMemberName, newMemberDOB, newMemberBloodGroup);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff71c9ce),
                ),
                child: Center(
                  child: Text(
                    'Add Member',
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(color: Colors.white),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
