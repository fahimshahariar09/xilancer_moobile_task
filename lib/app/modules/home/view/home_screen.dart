import 'package:flutter/material.dart';
import 'package:xilancer_moobile_task/common/app_images/app_images.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_text.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F4F5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        title: "Welcome Back!",
                        color: Color(0xff242B36),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      CustomText(
                        color: Color(0xff202B37),
                        title: "Leslie Alexander",
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ],
                  ),
                  CircleAvatar(backgroundImage: AssetImage(AppImages.profile)),
                ],
              ),
              CustomTextField(
                height: 40,
                hintText: "Search here",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Image.asset(
                  AppImages.filter,
                  height: 24,
                  width: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
