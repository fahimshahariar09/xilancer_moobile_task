import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLines,
    required this.hintText,
    this.contentPadding,
    this.fillColor,
    this.prefixIcon,
    this.height,
    this.width,
    this.controller,
    this.suffixIcon,
  });

  final int? maxLines;
  final String hintText;
  final EdgeInsets? contentPadding;
  final Color? fillColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? height;
  final double? width;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor ?? Colors.white,
          hintText: hintText,
          contentPadding: contentPadding ?? EdgeInsets.all(0),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
