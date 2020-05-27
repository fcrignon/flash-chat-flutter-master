import 'package:flutter/material.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {

  final Function onChanged;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final TextEditingController controller;

  const CustomTextField({
    Key key,@required this.onChanged,@required this.hintText,@required this.isPassword, this.keyboardType, this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      onChanged: onChanged,
      obscureText: isPassword,
      keyboardType: keyboardType ,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: kHintTextStyle,
        contentPadding:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}