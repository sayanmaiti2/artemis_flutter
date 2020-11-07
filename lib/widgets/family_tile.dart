import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FamilyTile extends StatelessWidget {
  const FamilyTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(15),
      title: Text(
        "Alice",
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
