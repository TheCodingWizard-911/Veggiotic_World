import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:veggiotic_world/screens/authentication/signIn/signInScreen.dart';
import 'package:veggiotic_world/shared/components/defaultButton.dart';
import 'package:veggiotic_world/shared/components/defaultInputField.dart';
import 'package:veggiotic_world/shared/components/defaultPasswordInputField.dart';
import 'package:veggiotic_world/shared/components/defaultTouchableIcon.dart';
import 'package:veggiotic_world/shared/components/defaultTouchableText.dart';
import 'package:veggiotic_world/shared/constants.dart';
import 'package:veggiotic_world/shared/validators.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  String email;
  String password;
  String confirmPassword;
  String error;
  bool passwordVisible = false;
  bool confirmPasswordVisible = false;

  togglePasswordVisibility() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  toggleConfirmPasswordVisibility() {
    setState(() {
      confirmPasswordVisible = !confirmPasswordVisible;
    });
  }

  String confirmPasswordValidator(newPassword) {
    if (newPassword.isEmpty) {
      return passwordNullError;
    } else if (newPassword != password) {
      return matchPasswordError;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Container(
        width: screenWidth,
        height: screenHeight * 0.60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 7.5,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                DefaultInputField(
                  inputKeyboard: TextInputType.emailAddress,
                  inputLabel: "Email",
                  inputHint: "Enter Your Email",
                  icon: Icons.alternate_email,
                  inputValidator: emailValidator,
                  valueChanged: (newEmail) {
                    setState(() {
                      email = newEmail;
                    });
                  },
                  valueSaved: (newEmail) {
                    email = newEmail;
                  },
                ),
                DefaultPasswordInputField(
                  inputValidator: passwordValidator,
                  valueChanged: (newPassword) {
                    setState(() {
                      password = newPassword;
                    });
                  },
                  valueSaved: (newPassword) {
                    password = newPassword;
                  },
                  changeVisibility: togglePasswordVisibility,
                  inputLabel: "Password",
                  inputHint: "Enter Your Password",
                  passwordVisible: passwordVisible,
                ),
                DefaultPasswordInputField(
                  inputValidator: confirmPasswordValidator,
                  valueChanged: (newPassword) {
                    setState(() {
                      confirmPassword = newPassword;
                    });
                  },
                  valueSaved: (newPassword) {
                    confirmPassword = newPassword;
                  },
                  changeVisibility: toggleConfirmPasswordVisibility,
                  inputLabel: "Confirm Password",
                  inputHint: "Confirm Your Password",
                  passwordVisible: confirmPasswordVisible,
                ),
                DefaultButton(
                  onTap: () {},
                  buttonText: "Signup",
                  buttonHeight: 40,
                  buttonWidth: 0.65,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      "- or signup with -",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultTouchableIcon(
                        onPress: null,
                        icon: Icon(
                          MdiIcons.googlePlus,
                          size: 40,
                          color: Colors.red[400],
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 5.0,
                        ),
                      ),
                      DefaultTouchableIcon(
                        onPress: null,
                        icon: Icon(
                          MdiIcons.facebook,
                          size: 30,
                          color: Colors.blue[800],
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 5.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      DefaultTouchableText(
                        onPress: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                        text: "SignIn",
                        color: Colors.blue,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
