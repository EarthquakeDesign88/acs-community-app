import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/footer.dart';
import 'package:acs_community/pages/parcel/components/body_parcel.dart';

class ParcelPage extends StatefulWidget {
  const ParcelPage({Key? key}) : super(key: key);

  @override
  State<ParcelPage> createState() => _ParcelPageState();
}

class _ParcelPageState extends State<ParcelPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: AppColors.whiteColor,
              iconTheme: const IconThemeData(color: AppColors.darkGreyColor),
              centerTitle: true,
              title: BigText(text: "พัสดุทั้งหมด", size: Dimensions.font20),
              bottom: TabBar(
                  labelColor: AppColors.blackColor,
                  indicatorColor: AppColors.mainColor,
                  tabs: [
                    Tab(
                        child: BigText(
                            text: "พัสดุใหม่", size: Dimensions.font18)),
                    Tab(
                        child: BigText(
                            text: "ประวัติพัสดุ", size: Dimensions.font18)), //
                  ]),
            ),
            backgroundColor: AppColors.menuColor,
            body: const BodyParcel(),
            bottomNavigationBar: const Footer(
                text: "ระบบบริหารและจัดการภายใน ตึกช้าง",
                imagePath: "assets/icons/acs-logo.png")));
  }
}
