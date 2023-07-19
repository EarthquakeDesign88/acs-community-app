import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/custom_icon.dart';
import 'package:acs_community/widgets/bottom_line.dart';
import 'package:acs_community/routes/route_helper.dart';
import 'package:get/get.dart';

class BodyFaq extends StatelessWidget {
  BodyFaq({Key? key}) : super(key: key);

  final List<String> faqItems = [
    "พัสดุหายหรือมีปัญหา ต้องทำอย่างไร",
    "หากอยู่ผิดบ้านเลขที่/ห้อง ต้องทำอย่างไร",
    "เพิ่ม/ลด สมาชิกในห้อง อย่างไร",
    "เป็นเจ้าของหลายห้อง ต้องทำอย่างไร",
    "เป็นเจ้าของคอนโดหลายแห่ง ต้องทำอย่างไร",
    "หน้าสมุดโทรศัพท์ข้อมูลไม่ครบถ้วน จะเพิ่มข้อมูลเบอร์โทรศัพท์ได้อย่างไร",
    "มีฟีเจอร์พิเศษสำหรับกรรมการหรือไม่ และจะใช้งานฟีเจอร์นั้นได้อย่างไร",
    "รหัสเชิญหาย/หมดอายุ ขอใหม่จากที่ไหน",
    "How to change language? เปลี่ยนภาษาอย่างไร",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      color: AppColors.whiteColor,
      child: Padding(
        padding: EdgeInsets.only(left: Dimensions.width15),
        child: ListView.builder(
            itemCount: faqItems.length,
            itemBuilder: (context, index) {
              final faqItem = faqItems[index];
              return Column(
                children: [
                  InkWell(
                    onTap: (){
                      Get.toNamed(RouteHelper.getFaqDetail(faqItem, index));
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(
                                text: faqItem,
                                size: Dimensions.font14,
                                color: AppColors.darkGreyColor
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CustomIcon(
                            height: Dimensions.width50,
                            width: Dimensions.width50,
                            bgColor: AppColors.whiteColor,
                            iconColor: AppColors.darkGreyColor,
                            icon: Icons.chevron_right,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const BottomLine(),
                ]
              );
            }
          )
        ),
    );
  }
}
