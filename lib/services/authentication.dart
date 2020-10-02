import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:veggiotic_world/models/appUser.dart';
import 'package:veggiotic_world/shared/components/defaultAlertDialog.dart';
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
  Future signupWithEmailAndPassword(
      BuildContext context, String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'weak-password') {
        showAlertDialog(context, "Error", weakPasswordError, "OK");
      } else if (error.code == 'email-already-in-use') {
        showAlertDialog(context, "Error", accountAlreadyExistError, "OK");
      }
    } catch (error) {
      showAlertDialog(context, "Error", error.toString(), "OK");
      return null;
    }
  }

  // Login in with email and password
  Future signinWithEmailAndPassword(
      BuildContext context, String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found') {
        showAlertDialog(context, "Error", accountDoesNotExistError, "OK");
      } else if (error.code == 'wrong-password') {
        showAlertDialog(context, "Error", incorrectPasswordError, "OK");
      }
    } catch (error) {
      showAlertDialog(context, "Error", error.toString(), "OK");
      return null;
    }
  }

  // sign out
  Future signOut(BuildContext context) async {
    try {
      return await _auth.signOut();
    } catch (error) {
      showAlertDialog(context, "Error", error.toString(), "OK");
      return null;
    }
  }
}
