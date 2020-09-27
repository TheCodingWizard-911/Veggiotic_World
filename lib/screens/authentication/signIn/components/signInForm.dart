import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:veggiotic_world/screens/authentication/signUp/signUpScreen.dart';
import 'package:veggiotic_world/screens/loading/loadingScreen.dart';
import 'package:veggiotic_world/screens/splash/splashScreen.dart';
import 'package:veggiotic_world/services/authentication.dart';
import 'package:veggiotic_world/shared/components/defaultButton.dart';
import 'package:veggiotic_world/shared/components/defaultInputField.dart';
import 'package:veggiotic_world/shared/components/defaultPasswordInputField.dart';
import 'package:veggiotic_world/shared/components/defaultTouchableIcon.dart';
import 'package:veggiotic_world/shared/components/defaultTouchableText.dart';
import 'package:veggiotic_world/shared/validators.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email;
  String password;
  String error;
  bool passwordVisible = false;
  dynamic result;
  bool loading = false;

  toggleVisibility() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
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
        child: loading
            ? LoadingScreen()
            : Form(
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
                        changeVisibility: toggleVisibility,
                        inputLabel: "Password",
                        inputHint: "Enter Your Password",
                        passwordVisible: passwordVisible,
                      ),
                      DefaultTouchableText(
                        onPress: () {},
                        text: "Forgot Password ?",
                      ),
                      DefaultButton(
                        onTap: () async => {
                          if (_formKey.currentState.validate())
                            {
                              setState(() {
                                loading = true;
                              }),
                              result = await _auth.signinWithEmailAndPassword(
                                  email, password),
                              if (result == null)
                                {
                                  setState(() {
                                    error = "Error! unable to sign in.";
                                    loading = false;
                                  }),
                                  print(error)
                                }
                              else
                                {
                                  loading = false,
                                  Navigator.pushNamed(
                                      context, SplashScreen.routeName)
                                }
                            }
                        },
                        buttonText: "SignIn",
                        buttonHeight: 40,
                        buttonWidth: 0.65,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "- or signin with -",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
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
                              "Don't have an account ?",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            DefaultTouchableText(
                              onPress: () {
                                Navigator.pushNamed(
                                    context, SignUpScreen.routeName);
                              },
                              text: "SignUp",
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
