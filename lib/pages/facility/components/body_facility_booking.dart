import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';

class BodyFacilityBooking extends StatelessWidget {
  const BodyFacilityBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/s1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: Dimensions.height10),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: BigText(
                  text: "ห้องสมุด",
                  size: Dimensions.font26,
                  color: AppColors.whiteColor)),
        ),
      ),
      SizedBox(height: Dimensions.height15),
      Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(children: [
          SizedBox(height: Dimensions.height10),
          const Align(
              alignment: Alignment.center,
              child: BigText(
                  text: "ระเบียบการใช้บริการ",
                  size: 22,
                  color: AppColors.blackColor)),
          SizedBox(height: Dimensions.height10),
          Padding(
            padding: EdgeInsets.only(left: Dimensions.width15),
            child: const Align(
                alignment: Alignment.bottomLeft,
                child: SmallText(
                    text:
                        "1.ห้ามนำเครื่องดื่ม, อาหาร เข้ามารับประทานในห้องสมุด",
                    color: AppColors.blackColor)),
          ),
          SizedBox(height: Dimensions.height10),
          Padding(
            padding: EdgeInsets.only(left: Dimensions.width15),
            child: const Align(
                alignment: Alignment.bottomLeft,
                child: SmallText(
                    text: "2.งดใช้เสียง", color: AppColors.blackColor)),
          ),
          SizedBox(height: Dimensions.height10),
        ]),
      )
    ]);
  }
}
