import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  final Widget child;
  const LoginBackground({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -50,
            left: -90,
            child: Image.asset(
              'assets/LoginScreenImages/TopLeftBubble.png',
              width: size.width * 1.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
