import 'package:artemis_flutter/models/user.dart';
import 'package:artemis_flutter/screens/home_screen.dart';
import 'package:artemis_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<ModelUser>(context);
    print(user);

    // Either return Sign-in or HomeScreen based on User authentication status
    if (user == null) {
      return LoginScreen();
    } else {
      return HomeScreen();
    }
  }
}
