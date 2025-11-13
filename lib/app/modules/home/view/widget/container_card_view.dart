import 'package:flutter/material.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_text.dart';

class ContainerCardView extends StatelessWidget {
  const ContainerCardView({
    super.key,
    required this.title,
    this.color,
  });
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffF2F4F5),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            CustomText(
              title: title,
              color: color,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ],
        ),
      ),
    );
  }
}
