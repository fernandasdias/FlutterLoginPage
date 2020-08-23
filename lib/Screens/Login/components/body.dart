import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/Screens/Login/components/background.dart';
import 'package:login/Screens/Login/components/rounded_input_field.dart';
import 'package:login/Screens/Login/components/rounded_password_field.dart';
import 'package:login/components/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset('assets/icons/login.svg',
              height: size.height * 0.35),
          RoundedInputField(
            hintText: 'Email',
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: 'LOGIN',
            press: () {},
          )
        ],
      ),
    );
  }
}
