import 'package:Studily/theme/style.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Don't have an account? " : "Already have an account? ",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
        Text(
          login ? "Sign Up" : "Sign In",
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
