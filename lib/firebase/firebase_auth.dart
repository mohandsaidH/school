import 'package:firebase_auth/firebase_auth.dart';

/// firebase auth
class FirebaseAuthController {
  // instance
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  void signUp({
    required String email ,
    required String password
}) {
    firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }
}
