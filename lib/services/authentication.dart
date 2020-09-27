import 'package:firebase_auth/firebase_auth.dart';
import 'package:veggiotic_world/models/appUser.dart';
import 'package:veggiotic_world/shared/constants.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AppUser _userFromFirebaseUser(User user) {
    return user != null ? AppUser(userId: user.uid) : null;
  }

  Stream<AppUser> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  // Signup with email and password
  Future signupWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'weak-password') {
        print(weakPasswordError);
      } else if (error.code == 'email-already-in-use') {
        print(accountAlreadyExistError);
      }
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // Login in with email and password
  Future signinWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found') {
        print(accountDoesNotExistError);
      } else if (error.code == 'wrong-password') {
        print(incorrectPasswordError);
      }
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
