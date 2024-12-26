import 'package:flutter/material.dart';
import 'package:login_signup/core/widgets/textfield_model.dart';
import 'package:login_signup/features/signup/screen/signup.dart';

List<TextFieldModel> signInfo = [
  TextFieldModel(
    prefixIcon: Icons.person_2_outlined,
    labelText: 'Name',
    hintText: 'Enter Your Name',
    controller: name,
    isPassword: false,
    validator: (value) {
      if (value!.isEmpty ||
          !RegExp(r"^[a-zA-a-zA]").hasMatch(value) ||
          value.length < 3) {
        return 'Enter valid Name';
      }
      return null;
    },
  ),
  TextFieldModel(
    type: TextInputType.number,
    controller: id,
    prefixIcon: Icons.payment_outlined,
    suffixIcons: null,
    labelText: 'ID',
    hintText: 'Enter id',
    isPassword: false,
    validator: (value) {
      if (value!.isEmpty ||
          !RegExp(r"^[Z0-9-Z0-9]").hasMatch(value) ||
          value.length != 14) {
        return 'Enter valid ID';
      }
      return null;
    },
  ),
  TextFieldModel(
    type: TextInputType.number,
    controller: phone,
    prefixIcon: Icons.phone_outlined,
    suffixIcons: null,
    labelText: 'phon',
    hintText: 'Enter Phone Number',
    isPassword: false,
    validator: (value) {
      if (value!.isEmpty ||
          !RegExp(r"^[Z0-9.Z0-9]").hasMatch(value) ||
          value.length != 11) {
        return 'Enter valid Phone Number';
      }
      return null;
    },
  ),
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
    icon: Icons.visibility,
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
  TextFieldModel(
    controller: token,
    prefixIcon: Icons.token_outlined,
    labelText: 'token',
    hintText: 'Enter Token',
    isPassword: true,
    validator: (value) {
      if (value!.isEmpty ||
          !RegExp(r"^[a-zA.a-zA]").hasMatch(value) ||
          value.length < 5) {
        return 'Enter valid Token';
      }
      return null;
    },
  ),
];
