import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:acs_community/widgets/menu_card.dart';
import 'package:acs_community/routes/route_helper.dart';
import 'package:get/get.dart';

class MenuTemplate extends StatelessWidget {
  const MenuTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/s1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                top: 60,
                right: 30,
                child: MaterialButton(
                    minWidth: Dimensions.width50,
                    height: Dimensions.height15,
                    color: Colors.transparent,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(Dimensions.radius50),
                    ),
                    child: const SmallText(
                        text: "เปลี่ยนชุมชน", color: AppColors.whiteColor))),
            Positioned(
              top: 85,
              left: 30,
              child: BigText(
                  text: "3300/25",
                  size: Dimensions.font26,
                  color: AppColors.whiteColor),
            ),
            Positioned(
              top: 115,
              left: 30,
              child: SmallText(
                  text: "ตึกช้าง",
                  size: Dimensions.font18,
                  color: AppColors.whiteColor),
            ),
            Positioned(
              top: 140,
              left: 30,
              child: Row(
                children: [
                  SmallText(
                      text: "36°C",
                      size: Dimensions.font18,
                      color: AppColors.whiteColor),
                  SizedBox(width: Dimensions.width10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          AppColors.mainColor, // Set the background color
                    ),
                    child: const SmallText(
                        text: "AQl 50", color: AppColors.whiteColor),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: Dimensions.height10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width5),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MenuCard(
                    icon: Icons.access_alarm,
                    text: "แจ้งเตือนค่าใช้จ่าย",
                    onPressed: () {
                      Get.toNamed(RouteHelper.paymentReminder);
                    }
                  ),
                ),
                Expanded(
                  child: MenuCard(
                    icon: Icons.picture_in_picture,
                    text: "พัสดุ",
                    onPressed: () {
                      Get.toNamed(RouteHelper.parcel);
                    }
                  )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MenuCard(
                      icon: Icons.spoke,
                      text: "จองส่วนกลาง",
                      onPressed: () {
                        Get.toNamed(RouteHelper.facility);
                      }),
                ),
                Expanded(
                    child: MenuCard(
                        icon: Icons.home_filled,
                        text: "ห้องของฉัน",
                        onPressed: () {
                          Get.toNamed(RouteHelper.myUnit);
                        }))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MenuCard(
                      icon: Icons.construction_outlined,
                      text: "แจ้งซ่อม",
                      onPressed: () {
                        Get.toNamed(RouteHelper.repair);
                      }),
                ),
                Expanded(
                    child: MenuCard(
                        icon: Icons.call,
                        text: "สมุดโทรศัพท์",
                        onPressed: () {
                          Get.toNamed(RouteHelper.phoneBook);
                        }))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: MenuCard(
                        icon: Icons.list_alt_outlined,
                        text: "ข้อเสนอแนะ",
                        onPressed: () {
                          Get.toNamed(RouteHelper.suggestion);
                        })),
                Expanded(
                    child: MenuCard(
                        icon: Icons.menu_book,
                        text: "ระเบียบชุมชน",
                        onPressed: () {
                          Get.toNamed(RouteHelper.communityRule);
                        }))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: MenuCard(
                        icon: Icons.co_present,
                        text: "ข้อมูลนิติ",
                        onPressed: () {
                          Get.toNamed(RouteHelper.propertyManagement);
                        })),
                Expanded(
                    child: MenuCard(
                        icon: Icons.elevator_rounded,
                        text: "เข้าใช้งานลิฟท์",
                        onPressed: () {
                          Get.toNamed(RouteHelper.authAccess);
                        }))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: MenuCard(
                      icon: Icons.chat_outlined,
                      text: "แชทกับนิติ",
                      onPressed: () {
                        Get.toNamed(RouteHelper.chat);
                      }),
                ),
                Expanded(child: Container()),
              ],
            ),
          ]),
        )
      ],
    );
  }
}
