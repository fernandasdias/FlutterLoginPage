import 'package:flutter/material.dart';
import 'package:login/Screens/Sign%20Up/signup_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size();
    return Scaffold(
      body: Body(),
    );
  }
}
