import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VaccineCard extends StatelessWidget {
  final String vaccine;
  final String dueDate;
  final String person;
  final String location;
  //final dynamic cardColor;

  VaccineCard(this.vaccine, this.dueDate, this.person, this.location);

  // getCardColor() {
  //   if (dueDate == 'Tomorrow') {
  //     // cardColor = Color(0xfff38181);
  //     cardColor = Colors.red;
  //   } else if (dueDate == 'Next Week') {
  //     // cardColor = Color(0xffeaffd0);
  //     cardColor = Colors.green;
  //   } else {
  //     // cardColor = Color(0xff95e1d3);
  //     cardColor = Colors.blue;
  //   }
  //   print(cardColor);
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 180,
        width: 400,
        margin: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
        ),
        decoration: BoxDecoration(
          color: Color(0xffffb6b9),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 20, top: 20),
                    child: Text(
                      vaccine,
                      style:
                          GoogleFonts.ubuntu(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 15, right: 20, top: 20),
                    child: Text(
                      dueDate,
                      style: GoogleFonts.raleway(
                        fontSize: 25,
                        color: Color(0xff3d6cb9),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              width: 370,
              child: Row(
                children: [
                  Icon(
                    Icons.face,
                    color: Color(0xff34495e),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    person,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff34495e),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              width: 370,
              child: Row(
                children: [
                  Icon(
                    Icons.near_me,
                    color: Color(0xff34495e),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    location,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Color(0xff34495e),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
