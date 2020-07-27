import 'package:firebase_auth/firebase_auth.dart';

class UserRepo {
  final FirebaseAuth _firebaseAuth;

  UserRepo() :_firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp(String email, String password) {
    return _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password)
  }

  Future<void> signIn(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: email);
  }

  Future<bool> isSignIn() async {
    final currentUser = await _firebaseAuth.currentUser();
    return currentUser != null;
  }
Future<void> signOut() async{
    return await _firebaseAuth.signOut();
}
Future<FirebaseUser> getUser() async{
return await _firebaseAuth.currentUser();
}
}