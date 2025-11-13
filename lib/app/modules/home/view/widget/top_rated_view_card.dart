import 'package:flutter/material.dart';
import 'package:xilancer_moobile_task/app/modules/home/view/widget/container_card_view.dart';
import 'package:xilancer_moobile_task/common/app_images/app_images.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_text.dart';

class TopRatedViewCard extends StatelessWidget {
  const TopRatedViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(AppImages.profile)),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          title: "Esther Howard",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff242B36),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.check_circle, color: Colors.green),
                      ],
                    ),
                    CustomText(
                      title: "UI/UX Designer",
                      color: Color(0xff414E62),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ContainerCardView(title: "Figma", color: Color(0xff3B4759)),
                SizedBox(width: 8),
                ContainerCardView(
                  title: "Mobile App",
                  color: Color(0xff3B4759),
                ),
                SizedBox(width: 8),
                CustomText(title: "+4", fontSize: 13),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.star, height: 14, width: 14),
                    SizedBox(width: 5),
                    CustomText(
                      title: "Review",
                      color: Color(0xff3B4759),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                CustomText(
                  title: "4.5 (212 reviews)",
                  color: Color(0xff3B4759),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.location, height: 14, width: 14),
                    SizedBox(width: 5),
                    CustomText(
                      title: "Location",
                      color: Color(0xff3B4759),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                CustomText(
                  title: "6391 Elgin St. Celina",
                  color: Color(0xff3B4759),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.doller, height: 14, width: 14),
                    SizedBox(width: 5),
                    CustomText(
                      title: "Hourly Rate",
                      color: Color(0xff3B4759),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                CustomText(
                  title: "\$83.00/hr",
                  color: Color(0xff3B4759),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
