import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:acs_community/widgets/custom_icon.dart';
import 'package:acs_community/widgets/bottom_line.dart';

class BodyFaqDetail extends StatelessWidget {
  final String faqItem;
  final int detailId;
  BodyFaqDetail({Key? key, required this.faqItem, required this.detailId})
      : super(key: key);

  final List<String> faqDetails = [
    "ACS Community เป็นเครื่องมือช่วยแจ้งเตือนพัสดุแก่ท่าน ดังนั้นหากมีปัญหาใด ๆ เกี่ยวกับพัสดุ กรุณาติดต่อเจ้าหน้าที่นิติบุคคลของท่าน",
    "1. เพิ่มห้องที่ถูกต้องก่อนด้วยการ\n 1.1 ไปที่เมนู \"ห้องของฉัน\"\n 1.2 กด \"เพิ่มห้อง\" เพื่อกรอกรหัสเชิญของห้องที่ถูกต้อง\n\n2. ออกจากห้องที่ผิด \n 2.1 กดที่ปุ่ม ... ที่อยู่บนบรรทัดของท่าน แล้วเลือก \"ออกจากบ้านเลขที่นี้\" \n 2.2 กด \"ย้ายออก\" เพื่อย้ายออกจากห้องที่อยู่ผิด",
    "การเพิ่มสมาชิก\n1. ไปที่เมนู \"ห้องของฉัน\" \n2. กด \"ดูรหัสเชิญ\" \n3. ส่งรหัสเชิญให้สมาชิกใหม่ \n\n การลดสมาชิก\n1. ไปที่เมนู \"ห้องของฉัน\"\n2. กดที่ปุ่ม \"...\" ด้านขวาของชื่อสมาชิก แล้วกด \"แจ้งย้ายออก\"\n3. ระบบจะส่งคำเตือนไปให้สมาชิกคนนั้นยืนยันการย้ายออก\n4. หากสมาชิกดังกล่าวไม่กดตอบรับใด ๆ ภายใน 15 วัน ระบบจะลบสมาชิกออกให้อัตโนมัติ",
    "1. ติดต่อเจ้าหน้าที่นิติบุคคลเพื่อขอรหัสใหม่ \n2. ไปที่เมนู \"ห้องของฉัน\"\n3. กดปุ่ม \"เพิ่มห้อง\"\n4. กรอกรหัสเชิญใหม่\n\n ท่านสามารถออกจากห้องได้โดยการกลับไปที่เมนู \"ห้องของฉัน\" และกดปุ่มย้ายออก",
    "1. ติดต่อขอรหัสเชิญจากเจ้าหน้าที่นิติบุคคลของอีกคอนโดที่ใช้ระบบ ACS Community\n2. ไปที่เมนู \"เปลี่ยนชุมชน\"\n3. กดปุ่ม \"เพิ่มชุมชน\"\n4. กรอกรหัสเชิญ",
    "โปรดติดต่อนิติฯของท่าน ให้ทำการเพิ่มเบอร์โทรศัพท์ผ่านทางเว็บไซต์ของเรา",
    "มีฟีเจอร์พิเศษเฉพาะสำหรับกรรมการเช่น \"กระดานงาน\" ไว้ใช้ติดตามงานต่าง ๆ กับนิติบุคคล\n\nกรรมการสามารถติดต่อนิติบุคคล เพื่อขอใช้งานฟีเจอร์ดังกล่าว",
    "ท่านสามารถขอรหัสเชิญได้ใหม่จากทางนิติบุคคล หรือจากสมาชิกในห้องที่ใช้งานแอปฯแล้ว",
    "1. Go to \"Settings\" menu in your bottom right menu\n2. Click \"ภาษา / Language\"\n3. Choose language",
  ];

  @override
  Widget build(BuildContext context) {
    final faqDetail = faqDetails[detailId];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
      child: Column(
        children: [
          SizedBox(height: Dimensions.height20),
          Align(alignment: Alignment.centerLeft, child: SmallText(text: faqItem)),
          SizedBox(height: Dimensions.height10),
          SmallText(text: faqDetail),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BottomLine(),
                  SizedBox(height: Dimensions.height10),
                  SmallText(text: "ข้อมูลนี้ตอบคำถามของคุณหรือเปล่า?"),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomIcon(
                        icon: Icons.check,
                        bgColor: AppColors.whiteColor,
                        iconColor: AppColors.blackColor,
                        iconSize: 30,
                      ),
                      SmallText(text: "ใช่"),
                      SizedBox(width: Dimensions.width10),
                      const CustomIcon(
                        icon: Icons.dangerous_outlined,
                        bgColor: AppColors.whiteColor,
                        iconColor: AppColors.blackColor,
                        iconSize: 30,
                      ),
                      SmallText(text: "ไม่"),
                    ],
                  ),
                  SizedBox(height: Dimensions.height20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
