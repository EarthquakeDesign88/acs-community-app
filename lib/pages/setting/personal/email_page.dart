import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/pages/setting/components/body_email.dart';

class EmailPersonalInfoPage extends StatelessWidget {
  const EmailPersonalInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        iconTheme: const IconThemeData(color: AppColors.darkGreyColor),
        centerTitle: true,
      ),
      body: const BodyEmail(),
    );
  }
}