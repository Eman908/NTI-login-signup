import 'package:flutter/material.dart';
import 'package:login_signup/core/widgets/input_field.dart';
import 'package:login_signup/features/signup/models/signup_list.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        height: 550,
        child: ListView.builder(
          itemCount: signInfo.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 16),
              child: CustomInputField(f: signInfo[index]),
            );
          },
        ),
      ),
    );
  }
}
