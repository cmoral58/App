import 'package:flutter/material.dart';
import 'package:studily/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "Enter Password",
            icon: Icon(
              Icons.lock,
              color: Color(0xff6159E6),
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: Color(0xff6159E6),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
