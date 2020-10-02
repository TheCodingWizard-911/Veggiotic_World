import 'package:flutter/material.dart';

class DefaultInputField extends StatelessWidget {
  const DefaultInputField({
    Key key,
    @required this.inputValidator,
    @required this.valueChanged,
    @required this.valueSaved,
    @required this.inputLabel,
    @required this.inputHint,
    this.inputKeyboard = TextInputType.text,
    this.icon,
  }) : super(key: key);

  final Function(String) inputValidator;
  final Function(String) valueChanged;
  final Function(String) valueSaved;
  final String inputLabel;
  final String inputHint;
  final TextInputType inputKeyboard;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 20.0),
      child: TextFormField(
        keyboardType: inputKeyboard,
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
          suffixIcon: Icon(icon),
        ),
      ),
    );
  }
}
