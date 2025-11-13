import 'package:flutter/material.dart';
import 'package:xilancer_moobile_task/app/modules/home/view/widget/categories_view_card.dart';
import 'package:xilancer_moobile_task/app/modules/home/view/widget/popular_services_view_card.dart';
import 'package:xilancer_moobile_task/app/modules/home/view/widget/recent_job_view_card.dart';
import 'package:xilancer_moobile_task/app/modules/home/view/widget/top_rated_view_card.dart';
import 'package:xilancer_moobile_task/common/app_images/app_images.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_button.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_text.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F4F5),
      body: SafeArea(
        child: SingleChildScrollView(
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
                    CircleAvatar(
                      backgroundImage: AssetImage(AppImages.profile),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CustomTextField(
                  height: 40,
                  hintText: "Search here",
                  prefixIcon: Icon(Icons.search),
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
                SizedBox(height: 15),
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
                SizedBox(height: 15),
                Card(
                  color: Color(0xff01795A),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              title:
                                  "Find the Perfect Freelancer\nfor Any Project",
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10),
                            CustomButton(
                              text: "Explore",
                              width: 144,
                              color: Color(0xff01795A),
                              height: 35,
                              cardColor: Colors.white,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Image.asset(
                            AppImages.explore,
                            fit: BoxFit.cover,
                            height: 170,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      color: Color(0xff202B37),
                      title: "Popular Services",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    CustomText(
                      color: Color(0xff202B37),
                      title: "Explore all",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                //Popular Services View Card
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PopularServicesViewCard(),
                      PopularServicesViewCard(),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    CustomText(
                      color: Color(0xff202B37),
                      title: "Recent Job Posted",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                //Recent Job View Card
                RecentJobViewCard(),
                SizedBox(height: 10),
                RecentJobViewCard(),
                SizedBox(height: 10),
                RecentJobViewCard(),
                SizedBox(height: 10),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: CustomText(
                      title: "Load More",
                      color: Color(0xff3B4759),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                //Top Rated Freelancers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      color: Color(0xff202B37),
                      title: "Top Rated Freelancers",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    CustomText(
                      color: Color(0xff202B37),
                      title: "Explore all",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TopRatedViewCard(),
                      SizedBox(height: 10),
                      TopRatedViewCard(),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
