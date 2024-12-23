import 'package:flutter/material.dart';

class TextFieldModel {
  final TextEditingController controller;
  final IconData? prefixIcon;
  final String labelText;
  final String hintText;
  final bool isPassword;
  final IconData? suffixIcons;
  final String? Function(String?)? validator;
  final TextInputType? type;
  TextFieldModel({
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.prefixIcon,
    this.suffixIcons,
    required this.isPassword,
    required this.validator,
    this.type,
  });
}
