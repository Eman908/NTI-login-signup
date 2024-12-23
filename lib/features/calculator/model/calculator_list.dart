import 'package:login_signup/core/widgets/textfield_model.dart';
import 'package:login_signup/features/calculator/screen/calculator.dart';
import 'package:flutter/material.dart';

List<TextFieldModel> calcInfo = [
  TextFieldModel(
      validator: (value) {
        if (value!.isEmpty) {
          return 'error';
        }
        return null;
      },
      controller: heightController,
      type: TextInputType.number,
      labelText: 'الطول',
      hintText: 'ادخل الطول',
      isPassword: false,
      prefixIcon: Icons.height),
  TextFieldModel(
    validator: (value) {
      if (value!.isEmpty) {
        return 'error';
      }
      return null;
    },
    prefixIcon: Icons.monitor_weight,
    controller: weightController,
    type: TextInputType.number,
    labelText: 'الوزن',
    hintText: 'ادخل الوزن',
    isPassword: false,
  ),
];
