import 'package:artemis_flutter/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // User object based on firebase user
  ModelUser _fromFirebaseUser(User user) {
    return user != null ? ModelUser(uid: user.uid) : null;
  }

  // auth change stream
  Stream<ModelUser> get user {
    return _auth.authStateChanges().map(_fromFirebaseUser);
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _fromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
