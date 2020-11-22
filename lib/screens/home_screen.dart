import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:artemis_flutter/widgets/vaccine_card.dart';
import 'package:artemis_flutter/screens/family_screen.dart';
import 'package:artemis_flutter/constants.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kGradient,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(EvaIcons.homeOutline),
                  iconSize: 36.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
                Ink(
                  decoration: ShapeDecoration(
                      shape: CircleBorder(), color: Color(0xff71c9ce)),
                  child: IconButton(
                    icon: Icon(Icons.add),
                    iconSize: 36.0,
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ),
                IconButton(
                  icon: Icon(EvaIcons.personOutline),
                  iconSize: 36.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FamilyScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50, bottom: 10),
              child: Center(
                child: Text(
                  'Artemis',
                  style: GoogleFonts.quicksand(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: Color(0xfffafafa),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  CircleAvatar(),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Alice Zuberg',
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Upcoming Shots',
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  color: Color(0xfffafafa),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 6, right: 6),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              height: MediaQuery.of(context).copyWith().size.height * 0.63,
              child: ListView(
                children: [
                  VaccineCard(
                      'Hepatitis', 'Tomorrow', 'Janice', 'Fortis Hospital'),
                  VaccineCard(
                      'Mumps', 'Next Week', 'Robert', 'Apollo Hospital'),
                  VaccineCard(
                      'Black Fever', 'Next Month', 'Alex', 'Apollo Hospital'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
