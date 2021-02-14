import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hack_app/Utils/SharedPreferences.dart';
import 'package:hack_app/models/UserModel.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<void> signInWithGoogle() async {
  await Firebase.initializeApp();

  //Initializing the Firebase auth Serivices
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final UserCredential authResult =
      await _auth.signInWithCredential(credential);
  final User user = authResult.user;

  if (user != null) {
    var result = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();

    if (!result.exists) {
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set(
          UserDetails.newuser(user.uid, user.displayName, user.photoURL,
                  user.email, user.phoneNumber)
              .toJson());
      Constants.prefs.setString('userId', user.uid);
      Constants.prefs.setString('username', user.displayName);
      Constants.prefs.setString('profileImage', user.photoURL);
    }
    Constants.prefs.setString('username', user.displayName);
    Constants.prefs.setString('profileImage', user.photoURL);
    Constants.prefs.setString('userId', user.uid);
  }
}

Future<void> signOutGoogle() async {
  final googleSignIn = GoogleSignIn();
  await googleSignIn.signOut();
  await _auth.signOut();
}
