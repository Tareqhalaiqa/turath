import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Icon icon;
  final String label;
  final TextInputType keyboardType;
  const CustomTextField(
      {super.key,
      required this.hint,
      required this.label,
      required this.icon,
      this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hint,
          labelText: label,
          prefixIcon: icon),
    );
  }
}
