import 'package:flutter/material.dart';
import 'package:login_signup/core/widgets/border_style.dart';
import 'package:login_signup/core/widgets/textfield_model.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField({super.key, required this.f});

  final TextFieldModel f;

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.f.type,
      autovalidateMode: AutovalidateMode.onUnfocus,
      validator: widget.f.validator,
      obscureText: widget.f.isPassword,
      controller: widget.f.controller,
      decoration: InputDecoration(
        labelText: widget.f.labelText,
        labelStyle: TextStyle(color: Colors.blueAccent),
        alignLabelWithHint: true,
        hintText: widget.f.hintText,
        prefixIcon: Icon(widget.f.prefixIcon, color: Colors.blueAccent),
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              widget.f.isPassword = !widget.f.isPassword;
            });
          },
          child:
              Icon(widget.f.isPassword ? widget.f.suffixIcons : widget.f.icon),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        enabledBorder: inputBorderStyle(Colors.grey),
        focusedBorder: inputBorderStyle(Colors.blueAccent),
        focusedErrorBorder: inputBorderStyle(Colors.red),
        errorBorder: inputBorderStyle(Colors.red),
      ),
    );
  }
}
