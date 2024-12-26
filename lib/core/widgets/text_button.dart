import 'package:flutter/material.dart';

TextButton textButton(
    {required void Function()? onPressed, required String txt}) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      '{$txt}',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
    ),
  );
}
