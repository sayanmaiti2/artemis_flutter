import 'package:artemis_flutter/models/user.dart';
import 'package:artemis_flutter/screens/wrapper.dart';
import 'package:artemis_flutter/services/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<ModelUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.white,
          accentColor: Colors.white,
          hintColor: Colors.white54,
        ),
      ),
    );
  }
}
