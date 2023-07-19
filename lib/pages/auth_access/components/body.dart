import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Body extends StatelessWidget {
  final String qrData;

  const Body({
    Key? key,
    required this.qrData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigText(text: "QR Code เพื่อใช้ยืนยันตัวตน", size: Dimensions.font18),
          QrImageView(
            data: qrData, // Use the qrData property here
            size: 200,
          ),
          SizedBox(height: Dimensions.height20),
          SmallText(
            text: "โปรดสแกน QR Code ภายใน 3 นาที",
            size: Dimensions.font14,
            color: AppColors.blackColor,
          ),
          SizedBox(height: Dimensions.height10),
          SmallText(
            text: "นำ QR Code แนบที่เครื่องสแกน",
            size: Dimensions.font14,
            color: AppColors.blackColor,
          ),
          SizedBox(height: Dimensions.height20),
        ],
      ),
    );
  }
}
