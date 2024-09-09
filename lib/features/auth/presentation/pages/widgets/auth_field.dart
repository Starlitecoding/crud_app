import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool isPasswordHidden;

  const AuthField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isPasswordHidden = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is not filled!';
        }
        return null;
      },
      obscureText: isPasswordHidden,
    );
  }
}
