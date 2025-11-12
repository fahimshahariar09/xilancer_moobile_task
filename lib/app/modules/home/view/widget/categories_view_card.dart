import 'package:flutter/material.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_text.dart';

class CategoriesViewCard extends StatelessWidget {
  const CategoriesViewCard({
    super.key,
    required this.images,
    required this.title,
  });
  final String images;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 106,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(images, height: 24, width: 24),
            SizedBox(height: 10),
            CustomText(
              title: title,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xff3B4759),
            ),
          ],
        ),
      ),
    );
  }
}
