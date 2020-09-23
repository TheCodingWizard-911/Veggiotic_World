import 'package:flutter/material.dart';

class DefaultPasswordInputField extends StatelessWidget {
  const DefaultPasswordInputField({
    Key key,
    @required this.inputValidator,
    @required this.valueChanged,
    @required this.valueSaved,
    @required this.changeVisibility,
    @required this.inputLabel,
    @required this.inputHint,
    @required this.passwordVisible,
  }) : super(key: key);

  final Function(String) inputValidator;
  final Function(String) valueChanged;
  final Function(String) valueSaved;
  final Function changeVisibility;
  final bool passwordVisible;
  final String inputLabel;
  final String inputHint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 20.0,
      ),
      child: TextFormField(
        obscureText: !passwordVisible,
        validator: inputValidator,
        onChanged: valueChanged,
        onSaved: valueSaved,
        decoration: InputDecoration(
          labelText: inputLabel,
          hintText: inputHint,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          suffixIcon: GestureDetector(
            onTap: changeVisibility,
            child: Icon(
              passwordVisible ? Icons.lock_open : Icons.lock,
            ),
          ),
        ),
      ),
    );
  }
}
