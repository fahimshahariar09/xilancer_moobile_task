import 'package:flutter/material.dart';
import 'package:xilancer_moobile_task/common/app_images/app_images.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_text.dart';

class PopularServicesViewCard extends StatelessWidget {
  const PopularServicesViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      child: SizedBox(
        width: 305,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(AppImages.popular, height: 172),
                  Positioned(
                    right: 10,
                    top: 10,

                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.favorite_border, size: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Color(0xff3B4759),
                        size: 15,
                      ),
                      SizedBox(width: 2),
                      CustomText(
                        title: "4.5 (23 Reviews)",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3B4759),
                      ),
                    ],
                  ),
                  CustomText(
                    title: "Level 2",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3B4759),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomText(
                title:
                    "I will do professional figma design\nfor website tamplate....",
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff242B36),
              ),
              SizedBox(height: 5),
              Divider(),
              SizedBox(height: 5),
              Container(
                height: 42,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF2F4F5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: "Starting From",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3B4759),
                      ),
                      CustomText(
                        title: "\$126",
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff242B36),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
