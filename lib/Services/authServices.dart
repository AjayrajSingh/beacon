import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  FirebaseAuth auth = FirebaseAuth.instance;
  bool isSignedIn = false;
  UserCredential userCredential;

  Future<User> getCurrentUser() async {
    User currentUser;
    currentUser = await auth.currentUser;
    return currentUser;
  }

  void signinAnonymously() async {
    userCredential =
        await FirebaseAuth.instance.signInAnonymously().then((value) {
      isSignedIn = true;
    });
  }

  String getUID() {
    return '';
  }

  void signOut() async {
    await auth.signOut().then((value) {
      isSignedIn = false;
    });
  }
}
