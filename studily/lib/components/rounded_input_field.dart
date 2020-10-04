import 'package:Studily/components/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedInputContainer extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputContainer({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Color(0xff6159E6),
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
