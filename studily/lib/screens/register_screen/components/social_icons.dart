import 'package:flutter/material.dart';
// import 'package:studily/theme/style.dart'; // Import not used

class SocialIcons extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocialIcons({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
              // border: Border.all(width: 1, color: kPrimaryColor),
              shape: BoxShape.circle),
          child: Image.asset(
            iconSrc,
            width: 40,
            height: 40,
          )),
    );
  }
}
