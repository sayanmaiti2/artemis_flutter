import 'package:artemis_flutter/screens/family_screen.dart';
import 'package:artemis_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:artemis_flutter/services/auth_service.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RegistrationScreen> {
  bool checkBoxValue = false;
  DateTime newMemberDOB;
  String username;
  String email;
  String password;
  String reTypedPassword;
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          child: Center(
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Artemis',
                    style: GoogleFonts.quicksand(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).copyWith().size.width * 0.90,
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                    onChanged: (value) {
                      username = value;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 80,
                    width: 390,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1.0, color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Date of Birth',
                          style: GoogleFonts.lato(
                            textStyle:
                                TextStyle(fontSize: 16, color: Colors.grey),
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
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                    ),
                    onChanged: (value) {
                      reTypedPassword = value;
                    },
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: checkBoxValue,
                        onChanged: (newValue) {
                          setState(() {
                            checkBoxValue = newValue;
                          });
                        }),
                    Text(
                        'I agree to the Terms and Conditions and Privacy Policy'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: ButtonTheme(
                    minWidth: 150,
                    height: 50,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Color(0xff71c9ce),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Register',
                        style: GoogleFonts.quicksand(
                            textStyle: TextStyle(color: Colors.white),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {
                        // TODO: Register New user and redirect them to family screen
                        print(username);
                        print(email);
                        print(newMemberDOB);
                        print(password);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Have an account?'),
                      FlatButton(
                        textColor: Color(0xfff85f6a),
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
