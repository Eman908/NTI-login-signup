import 'package:flutter/material.dart';
import 'package:login_signup/core/style/button_style.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.btnText,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final String btnText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Processing Data'),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Please Enter Valid Data'),
              ),
            );
          }
        },
        child: Text(
          btnText,
          style: buttonStyle(),
        ),
      ),
    );
  }
}
