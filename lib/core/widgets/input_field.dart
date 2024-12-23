import 'package:flutter/material.dart';
import 'package:login_signup/core/widgets/border_style.dart';
import 'package:login_signup/core/widgets/textfield_model.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({super.key, required this.f});

  final TextFieldModel f;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: f.type,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: f.validator,
      obscureText: f.isPassword,
      controller: f.controller,
      decoration: InputDecoration(
        labelText: f.labelText,
        labelStyle: TextStyle(color: Colors.blueAccent),
        alignLabelWithHint: true,
        hintText: f.hintText,
        prefixIcon: Icon(f.prefixIcon, color: Colors.blueAccent),
        suffixIcon: Icon(f.suffixIcons),
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        enabledBorder: inputBorderStyle(Colors.grey),
        focusedBorder: inputBorderStyle(Colors.blueAccent),
        focusedErrorBorder: inputBorderStyle(Colors.red),
        errorBorder: inputBorderStyle(Colors.red),
      ),
    );
  }
}
