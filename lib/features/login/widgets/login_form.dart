import 'package:flutter/material.dart';
import 'package:login_signup/core/widgets/input_field.dart';
import 'package:login_signup/features/login/models/login_list.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        height: 250,
        child: ListView.builder(
          itemCount: loginInfo.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 16),
              child: CustomInputField(f: loginInfo[index]),
            );
          },
        ),
      ),
    );
  }
}
