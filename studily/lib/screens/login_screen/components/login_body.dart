import 'package:flutter/material.dart';
import 'package:studily/components/rounded_input_field.dart';
import 'package:studily/components/rounded_password_field.dart';
import 'package:studily/components/text_field_container.dart';
import 'package:studily/screens/home_screen/home_screen.dart';
import 'login_background.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                  fontSize: 55),
            ),
            Image.asset(
              'assets/LoginScreenImages/undraw_unlock_24mb.png',
              width: size.width * 2,
            ),
            RoundedInputContainer(
              hintText: "Enter Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: RaisedButton(
                  color: Color(0xff6159E6),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                    // Code for navigation
                  }),
            )
          ],
        ),
      ),
    );
  }
}
