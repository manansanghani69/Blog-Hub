import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscure = false,
  });
  final String hintText;
  final TextEditingController controller;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        letterSpacing: 1,
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
      obscureText: isObscure,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText.toUpperCase(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintText is missing";
        }
        return null;
      },
    );
  }
}
