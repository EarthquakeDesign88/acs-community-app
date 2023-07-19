import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:acs_community/widgets/custom_icon.dart';
import 'package:acs_community/widgets/bottom_line.dart';

class BodyPaymentReminderDetail extends StatelessWidget {
  const BodyPaymentReminderDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width30),
          child: Column(
            children: [
              SizedBox(height: Dimensions.height20),
              BigText(text: "ยอดรวมที่ต้องชำระ (บาท)", size: Dimensions.font20),
              SizedBox(height: Dimensions.height10),
              BigText(
                  text: "12,000.50",
                  size: Dimensions.font22,
                  color: AppColors.mainColor),
              SizedBox(height: Dimensions.height10),
              BottomLine(),
            ],
          ),
        ),
        SizedBox(height: Dimensions.height10),
        BigText(text: "รายละเอียด", size: Dimensions.font20),
        SizedBox(height: Dimensions.height20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                text: "ชุมชน",
                size: Dimensions.font16,
                color: AppColors.darkGreyColor
              ),
              BigText(
                text: "ACS Community",
                size: Dimensions.font16,
                color: AppColors.blackColor
              ),
            ],
          ),
        ),
        SizedBox(height: Dimensions.height10),
        const BottomLine(),
        SizedBox(height: Dimensions.height10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                text: "บ้านเลขที่",
                size: Dimensions.font16,
                color: AppColors.darkGreyColor
              ),
              BigText(
                text: "3300/25",
                size: Dimensions.font16,
                color: AppColors.blackColor
              ),
            ],
          ),
        ),
        SizedBox(height: Dimensions.height10),
        const BottomLine(),
        SizedBox(height: Dimensions.height10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                text: "รายการ",
                size: Dimensions.font16,
                color: AppColors.darkGreyColor
              ),
              BigText(
                text: "ค่าส่วนกลาง",
                size: Dimensions.font16,
                color: AppColors.blackColor
              ),
            ],
          ),
        ),
        SizedBox(height: Dimensions.height10),
        const BottomLine(),
        SizedBox(height: Dimensions.height10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                text: "เจ้าของกรรมสิทธิ์",
                size: Dimensions.font16,
                color: AppColors.darkGreyColor
              ),
              BigText(
                text: "นายทดสอบ ระบบ",
                size: Dimensions.font16,
                color: AppColors.blackColor
              ),
            ],
          ),
        ),
        SizedBox(height: Dimensions.height10),
        const BottomLine(),
        SizedBox(height: Dimensions.height10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                text: "กำหนดชำระ",
                size: Dimensions.font16,
                color: AppColors.darkGreyColor
              ),
              BigText(
                text: "30 ก.ค. 66",
                size: Dimensions.font16,
                color: AppColors.blackColor
              ),
            ],
          ),
        ),
        SizedBox(height: Dimensions.height10),
        const BottomLine(),
        SizedBox(height: Dimensions.height20),
        BigText(text: "ข้อมูลการชำระเงิน", size: Dimensions.font20),
        SizedBox(height: Dimensions.height10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             CustomIcon(
              icon: Icons.qr_code,
              shape: "square",
              iconColor: AppColors.mainColor,
              bgColor: AppColors.greyColor
             ),
            CustomIcon(
              icon: Icons.barcode_reader,
              shape: "square",
              iconColor: AppColors.mainColor,
              bgColor: AppColors.greyColor
             ),
            ],
          ),
        ),
        SizedBox(height: Dimensions.height20),
      ],
    );
  }
}
