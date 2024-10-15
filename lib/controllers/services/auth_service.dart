import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  AuthService() {}

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;  // Stores firebase_auth package

  Future<bool> login(String email, String password) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);

      if (credential.user != null) {
        return true;
      }
    } catch (e) {}
  }
}