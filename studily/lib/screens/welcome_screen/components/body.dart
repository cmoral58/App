import 'package:flutter/material.dart';
import 'package:studily/screens/login_screen/login_screen.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Stack(
        alignment: Alignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Positioned(
            top: 260,
            left: 25,
            child: Text(
              "Studily",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 55,
                  color: Color(0xff6159E6)),
            ),
          ),
          Positioned(
            top: 320,
            left: 65,
            child: Text(
              "An app for students",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xff9891FF)),
            ),
          ),
          Positioned(
              bottom: 90,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: RaisedButton(
                    color: Color(0xff6159E6),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                      // Code for navigation
                    }),
              ))
        ],
      ),
    );
  }
}
