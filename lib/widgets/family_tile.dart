import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FamilyTile extends StatelessWidget {
  final String name;
  FamilyTile({this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(15),
      title: Text(
        name,
        style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white, fontSize: 22)),
      ),
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        child: Icon(
          Icons.face,
          size: 35,
        ),
      ),
    );
  }
}
