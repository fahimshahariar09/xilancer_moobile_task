import 'package:flutter/material.dart';
import 'package:xilancer_moobile_task/app/modules/home/view/widget/categories_view_card.dart';
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
              SizedBox(height: 10),
              CustomTextField(
                height: 40,
                hintText: "Search here",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Image.asset(
                  AppImages.filter,
                  width: 15,
                  height: 15,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  CustomText(
                    color: Color(0xff202B37),
                    title: "Popular Categories",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoriesViewCard(
                      images: AppImages.digital,
                      title: 'Digital\nMarketing',
                    ),
                    SizedBox(width: 10),
                    CategoriesViewCard(
                      images: AppImages.graphics,
                      title: 'Graphics\nDesign',
                    ),
                    SizedBox(width: 10),
                    CategoriesViewCard(
                      images: AppImages.web,
                      title: 'Website\nDevelopment',
                    ),
                    SizedBox(width: 10),
                    CategoriesViewCard(
                      images: AppImages.desgin,
                      title: 'Branding\nDesign',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
