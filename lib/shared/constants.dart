import 'package:flutter/material.dart';

const primaryColor = Color(0xFF7AA9A7);
const primaryBackgroundColor = Color(0xFFF5F5DC);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String emailNullError = "Please Enter your email";
const String invalidEmailError = "Please Enter Valid Email";
const String passwordNullError = "Please Enter your password";
const String shortPasswordError = "Password must contain atleast 6 characters";
const String matchPasswordError = "Passwords don't match";
const String namelNullError = "Please Enter your name";
const String phoneNumberNullError = "Please Enter your phone number";
const String addressNullError = "Please Enter your address";
const String weakPasswordError = "Password is too weak, kindly change";
const String accountAlreadyExistError =
    "Account with that email already exist\nplease log in";
const String accountDoesNotExistError =
    "Account with that email does not exist\nplease create one";
const String incorrectPasswordError = "Entered Password is incorrect";
