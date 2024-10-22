import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  AuthService() {}

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;  // Stores firebase_auth package
  User? _user;  // Stores reference for logged in user

  User? get user {
    return _user;
  }

  Future<bool> login(String email, String password) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

      if (credential.user != null) {
        _user = credential.user;
        return true;
      }
    } catch (e) {
      print(e);
    }

    return false;
  }
}