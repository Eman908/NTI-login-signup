import 'package:flutter/material.dart';
import 'package:login_signup/core/widgets/textfield_model.dart';
import 'package:login_signup/features/login/screens/login.dart';

List<TextFieldModel> loginInfo = [
  TextFieldModel(
    controller: email,
    prefixIcon: Icons.email_outlined,
    suffixIcons: null,
    labelText: 'Email',
    hintText: 'Enter Email',
    isPassword: false,
    validator: (value) {
      if (value!.isEmpty ||
          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.com")
              .hasMatch(value)) {
        return 'Enter valid email';
      }
      return null;
    },
  ),
  TextFieldModel(
    controller: password,
    suffixIcons: Icons.visibility_off_outlined,
    labelText: 'Password',
    hintText: 'Enter Password',
    isPassword: true,
    validator: (value) {
      if (value!.isEmpty ||
          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]")
              .hasMatch(value) ||
          value.length < 8) {
        return 'Enter valid Password';
      }
      return null;
    },
  ),
];
