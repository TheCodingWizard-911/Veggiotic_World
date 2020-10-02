import 'package:veggiotic_world/shared/constants.dart';

String emailValidator(newEmail) {
  if (newEmail.isEmpty) {
    return emailNullError;
  } else if (!emailValidatorRegExp.hasMatch(newEmail)) {
    return invalidEmailError;
  }
  return null;
}

String passwordValidator(newPassword) {
  if (newPassword.isEmpty) {
    return passwordNullError;
  } else if (newPassword.length < 6) {
    return shortPasswordError;
  }
  return null;
}
