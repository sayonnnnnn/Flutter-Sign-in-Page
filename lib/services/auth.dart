import 'package: firebase_auth/firebase_auth.dart';

class Auth {
  User get currentUser => FirebaseAuth.instance.currentUser;

  Future<User> signInAnonymously() async {
    final userCredentials = await FirebaseAuth.instance.signInAnonymously();
    return userCredentials.user;
  }

  // Future<void> signOut() async {
  //  await FirebaseAuth.instance.signOut();
  // }
}

