import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:artemis_flutter/widgets/vaccine_card.dart';
import 'package:artemis_flutter/screens/family_screen.dart';
import 'package:artemis_flutter/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kGradient,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.hSquare),
                iconSize: 36.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.fileMedical),
                iconSize: 36.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FamilyScreen()),
                  );
                },
              ),
              Ink(
                decoration: ShapeDecoration(
                    shape: CircleBorder(), color: Color(0xff71c9ce)),
                child: IconButton(
                  icon: Icon(Icons.add),
                  iconSize: 46.0,
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.stethoscope),
                iconSize: 36.0,
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.envelopeOpen),
                iconSize: 36.0,
                onPressed: () {},
              ),
            ],
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
            Expanded(
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
