import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/Screens/Login/components/rounded_input_field.dart';
import 'package:login/Screens/Login/components/rounded_password_field.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/Sign%20Up/signup_background.dart';
import 'package:login/components/already_have_an_account_check.dart';
import 'package:login/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'SIGNUP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.040),
        SvgPicture.asset(
          'assets/icons/signup.svg',
          height: size.height * 0.30,
        ),
        SizedBox(height: size.height * 0.040),
        RoundedInputField(
          hintText: 'Email',
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        RoundedButton(
          text: 'SIGNUP',
          press: () {},
        ),
        SizedBox(height: size.height * 0.020),
        AlreadyHaveAnAccountCheck(
          login: false,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ),
            );
          },
        )
      ],
    ));
  }
}
