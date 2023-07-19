import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/main_button.dart';
import 'package:acs_community/pages/facility/components/body_facility_booking.dart';

class FacilityBookingPage extends StatefulWidget {
  const FacilityBookingPage({Key? key}) : super(key: key);

  @override
  State<FacilityBookingPage> createState() => _FacilityBookingPageState();
}

class _FacilityBookingPageState extends State<FacilityBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.whiteColor,
            iconTheme: const IconThemeData(color: AppColors.darkGreyColor),
            centerTitle: true,
            title: BigText(text: "จองส่วนกลาง", size: Dimensions.font20)),
        backgroundColor: AppColors.menuColor,
        body: const BodyFacilityBooking(),
        bottomNavigationBar: const MainButton(text: "ยอมรับและเริ่มการจอง"));
  }
}
