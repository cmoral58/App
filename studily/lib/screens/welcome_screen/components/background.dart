import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
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
            top: 100,
            right: 0,
            child: Image.asset(
              'assets/WaveImages/WelcomeWave.png',
              width: size.width * 1,
            ),
          ),
          Positioned(
            top: 25,
            left: 10,
            child: Image.asset(
              'assets/WelcomeScreenImages/undraw_book_lover_mkck.png',
              width: size.width * 0.8,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
