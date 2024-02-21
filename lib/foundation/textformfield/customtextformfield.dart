import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final bool showBorder;
  final IconData? prefixIcon;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.showBorder = true,
    this.prefixIcon,
    this.validator,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: showBorder ? const OutlineInputBorder() : InputBorder.none,
        prefixIcon: prefixIcon != null? Icon(prefixIcon) : null,
        
      ),
      obscureText: obscureText,
      validator: validator,
    );
  }
}
