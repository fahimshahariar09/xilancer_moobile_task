import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title, this.color, this.fontWeight, this.fontSize, this.textOverflow, this.textAlign, this.maxLines});

  final String title;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? Colors.black,
        fontWeight: fontWeight,
        fontSize: fontSize ?? 13,
        overflow: textOverflow,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}