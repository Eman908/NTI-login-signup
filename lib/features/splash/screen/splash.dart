import 'package:flutter/material.dart';
import 'package:login_signup/features/login/screen/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 5),
      () => {
        if (mounted)
          {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            )
          }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: CircularProgressIndicator(
        color: Colors.blue,
      )),
    );
  }
}
