import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  //final TextEditingController controller;
  final String hintText;
  final String labelText;
  final String counterText;
  final String errorText;
  //final Widget prefix;
  //final Widget suffix;
  final bool obscure;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  //final bool enabled;

  CustomTextField({
    this.hintText,
    this.labelText,
    this.counterText,
    this.errorText,
    //this.prefix,
    //this.suffix,
    this.obscure = false,
    this.keyboardType,
    this.onChanged,
    //this.enabled,
    //this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   shape: BoxShape.rectangle,
      //   color: Colors.grey[200],
      //   borderRadius: BorderRadius.circular(32),
      // ),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        //controller: controller,
        obscureText: obscure,
        keyboardType: keyboardType,
        onChanged: onChanged,
        //enabled: enabled,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          counterText: counterText,
          errorText: errorText
          //border: InputBorder.none,
          //prefixIcon: prefix,
          //suffixIcon: suffix,
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}