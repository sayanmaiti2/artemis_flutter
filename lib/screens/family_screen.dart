import 'package:artemis_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:artemis_flutter/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:artemis_flutter/widgets/family_list.dart';
import 'package:artemis_flutter/screens/add_family_screen.dart';
import 'package:artemis_flutter/models/member.dart';

class FamilyScreen extends StatefulWidget {
  @override
  _FamilyScreenState createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen> {
  List<Member> familyMembers = [
    Member(name: 'Alice', dateOfBirth: DateTime(1990, 5, 2), bloodGroup: 'A+'),
    Member(name: 'Jean', dateOfBirth: DateTime(1994, 6, 21), bloodGroup: 'AB+'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kGradient,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddFamilyScreen(
                    (newMemberName, newMemberDOB, newMemberBloodGroup) {
                      setState(() {
                        familyMembers.add(Member(
                            name: newMemberName,
                            dateOfBirth: newMemberDOB,
                            bloodGroup: newMemberBloodGroup));
                      });
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              isScrollControlled: true,
            );
          },
          backgroundColor: Color(0xff71c9ce),
          child: Icon(
            Icons.add,
            size: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    "Family",
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      "Skip",
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: FamilyList(familyMembers),
              )
            ],
          ),
        ),
      ),
    );
  }
}
