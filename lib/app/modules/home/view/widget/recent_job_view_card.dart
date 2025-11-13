import 'package:flutter/material.dart';
import 'package:xilancer_moobile_task/app/modules/home/view/widget/container_card_view.dart';
import 'package:xilancer_moobile_task/common/app_images/app_images.dart';
import 'package:xilancer_moobile_task/common/custom_widget/custom_text.dart';

class RecentJobViewCard extends StatelessWidget {
  const RecentJobViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(AppImages.profile),
                    ),
                    SizedBox(width: 5),
                    CustomText(
                      title: "Posted 2 years ago",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff3B4759),
                    ),
                  ],
                ),
                Icon(Icons.favorite_border, size: 18),
              ],
            ),
            SizedBox(height: 10),
            CustomText(
              title: "Logo Design for Business Loan Brokerage\nfora  agency",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0xff242B36),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ContainerCardView(title: "MidLevel", color: Color(0xff007456)),
                SizedBox(width: 8),
                ContainerCardView(title: "Fixed", color: Color(0xff6A3BE8)),
                SizedBox(width: 8),
                ContainerCardView(title: "Sponsored", color: Color(0xff3B4759)),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
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
                      title: "Fixed Price",
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
    );
  }
}
