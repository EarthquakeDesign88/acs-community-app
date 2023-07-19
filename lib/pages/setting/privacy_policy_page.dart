import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/pages/setting/components/body_privacy_policy.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        iconTheme: const IconThemeData(
          color: AppColors.darkGreyColor,
        ),
        centerTitle: true,
        title: BigText(text: "นโยบายความเป็นส่วนตัว", size: Dimensions.font20)
      ),
      body: const BodyPrivacyPolicy(),
    );
  }
}