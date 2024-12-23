import 'package:flutter/material.dart';
import 'package:login_signup/core/style/heading_style.dart';
import 'package:login_signup/core/widgets/submit_button.dart';
import 'package:login_signup/features/login/widgets/login_form.dart';
import 'package:login_signup/features/signup/screen/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _HomeScreenState();
}

final TextEditingController email = TextEditingController();
final TextEditingController password = TextEditingController();

class _HomeScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    email.addListener(() {});
    password.addListener(() {});
  }

  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset(
              'assets/image 1.png',
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
              child: Column(
                children: [
                  Text(
                    'Welcome Back',
                    style: headingStyle(),
                  ),
                  LoginForm(formKey: _formKey),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: SubmitButton(
                      formKey: _formKey,
                      btnText: 'Login',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? "),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignupScreen();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
