import 'package:Studily/components/already_have_an_account_check.dart';
import 'package:Studily/components/rounded_button.dart';
import 'package:Studily/components/rounded_input_field.dart';
import 'package:Studily/components/rounded_password_field.dart';
import 'package:Studily/screens/home_screen/home_screen.dart';
import 'package:Studily/screens/register_screen/register_screen.dart';
import 'package:flutter/material.dart';
// import 'package:studily/components/text_field_container.dart';
// import 'package:studily/theme/style.dart'; // import not used
import 'login_background.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: LoginBackground(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 26),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Image.asset(
                'assets/LoginScreenImages/undraw_unlock_24mb.png',
                width: size.width * 2,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedInputContainer(
                hintText: "Enter Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "Sign In",
                press: () {
                  // Code for navigation
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
