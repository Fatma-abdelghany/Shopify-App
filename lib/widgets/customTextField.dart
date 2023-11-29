
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {

  CustomTextField({
    super.key,
    required this.Controller,
    required this.isPassword,
    required this.hint,
    required this.myPrefixIcon, required this.type
  });

  final TextEditingController? Controller;
  bool isPassword;
  String hint;
  TextInputType type;
  Icon myPrefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Controller,
      obscureText: isPassword?true:false,
      keyboardType: type,
      decoration: InputDecoration(
          label:Text(hint) ,
          border: InputBorder.none,
          hintText: hint,
          filled: true,
          fillColor: Colors.white,
          prefixIcon:myPrefixIcon

      ),
    );
  }
}

