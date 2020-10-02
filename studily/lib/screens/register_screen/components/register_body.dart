import 'package:flutter/material.dart';
import 'package:studily/components/already_have_an_account_check.dart';
import 'package:studily/components/rounded_button.dart';
import 'package:studily/components/rounded_input_field.dart';
import 'package:studily/components/rounded_password_field.dart';
import 'package:studily/screens/login_screen/login_screen.dart';
import 'package:studily/screens/register_screen/components/or_divider.dart';
import 'package:studily/screens/register_screen/components/register_background.dart';
import 'package:studily/screens/register_screen/components/social_icons.dart';

class RegisterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: RegisterBackground(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Register",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 26),
              ),
              Image.asset(
                "assets/RegisterScreenImages/undraw_Access_account_re_8spm(1).png",
                width: size.width * 0.9,
              ),
              RoundedInputContainer(
                hintText: "Enter Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "Sign Up",
                press: () {},
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcons(
                    iconSrc: "assets/Icons/facebook.png",
                    press: () {},
                  ),
                  SocialIcons(
                    iconSrc: "assets/Icons/google.png",
                    press: () {},
                  ),
                  SocialIcons(
                    iconSrc: "assets/Icons/twitter.png",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
