import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/pages/phone_book/components/body_phone_book.dart';

class PhoneBookPage extends StatefulWidget {
  const PhoneBookPage({Key? key}) : super(key: key);

  @override
  State<PhoneBookPage> createState() => _PhoneBookPageState();
}

class _PhoneBookPageState extends State<PhoneBookPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.whiteColor,
              iconTheme: const IconThemeData(color: AppColors.darkGreyColor),
              centerTitle: true,
              title: BigText(text: "สมุดโทรศัพท์", size: Dimensions.font20),
              bottom: TabBar(
                  labelColor: AppColors.blackColor,
                  indicatorColor: AppColors.mainColor,
                  tabs: [
                    Tab(
                        child:
                            BigText(text: "โครงการ", size: Dimensions.font18)),
                    Tab(
                        child:
                            BigText(text: "ฉุกเฉิน", size: Dimensions.font18)),
                    Tab(
                        child:
                            BigText(text: "อื่นๆ", size: Dimensions.font18)), //
                  ]),
            ),
            backgroundColor: AppColors.menuColor,
            body: const BodyPhoneBook()));
  }
}
