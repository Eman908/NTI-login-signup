import 'package:flutter/material.dart';
import 'package:login_signup/core/widgets/border_style.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    required this.labelText,
    required this.hintText,
    required this.controller,
    super.key,
    this.prefixIcon,
    this.suffixIcons,
    required this.isPassword,
    required this.validator,
  });

  final TextEditingController controller;
  final IconData? prefixIcon;
  final String labelText;
  final String hintText;
  final bool isPassword;
  final IconData? suffixIcons;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      obscureText: isPassword,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.blueAccent),
        alignLabelWithHint: true,
        hintText: hintText,
        prefixIcon: Icon(prefixIcon, color: Colors.blueAccent),
        suffixIcon: Icon(suffixIcons),
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        enabledBorder: inputBorderStyle(Colors.grey),
        focusedBorder: inputBorderStyle(Colors.blueAccent),
        focusedErrorBorder: inputBorderStyle(Colors.red),
        errorBorder: inputBorderStyle(Colors.red),
      ),
    );
  }
}
