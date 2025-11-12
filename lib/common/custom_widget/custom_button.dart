import 'package:flutter/material.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.color,
    this.cardColor,
    this.fontWeight,
    this.fontSize,
    this.height,
    this.width,
    this.borderRadius,
  });

  final String text;
  final Color? color;
  final Color? cardColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: cardColor ?? Colors.blue,
        borderRadius: borderRadius ?? BorderRadius.circular(15),
      ),
      child: Center(
        child: CustomText(
          title: text,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}