import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VaccineCard extends StatelessWidget {
  final String vaccine;
  final String dueDate;
  final String person;
  final String location;

  VaccineCard(this.vaccine, this.dueDate, this.person, this.location);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 400,
      margin: EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
      ),
      decoration: BoxDecoration(
        color: Color(0xfff5f1da),
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
                        fontSize: 25, color: Colors.redAccent),
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
                Icon(Icons.face),
                SizedBox(
                  width: 12,
                ),
                Text(
                  person,
                  style: TextStyle(
                    fontSize: 18,
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
                Icon(Icons.near_me),
                SizedBox(
                  width: 12,
                ),
                Text(
                  location,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
