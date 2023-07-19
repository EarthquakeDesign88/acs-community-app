import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:acs_community/pages/facility/components/no_booking.dart';
import 'package:acs_community/routes/route_helper.dart';
import 'package:get/get.dart';

class BodyFacility extends StatelessWidget {
  const BodyFacility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ListView(
        children: [
          SizedBox(height: Dimensions.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.facilityBooking);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                  child: Container(
                    padding: EdgeInsets.only(left: Dimensions.width10),
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1600431521340-491eca880813?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Column(children: [
                          BigText(
                              text: "ห้องสมุด",
                              size: Dimensions.font20,
                              color: AppColors.whiteColor),
                          const SmallText(
                              text: "ชั้น 26 สวีท", color: AppColors.whiteColor)
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.facilityBooking);
                },
                child: Padding(
                  padding: EdgeInsets.only(right: Dimensions.width10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1575429198097-0414ec08e8cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Column(children: [
                          BigText(
                              text: "สระว่ายน้ำ",
                              size: Dimensions.font20,
                              color: AppColors.whiteColor),
                          const SmallText(
                              text: "อาคาร สวีท", color: AppColors.whiteColor)
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.facilityBooking);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                  child: Container(
                    padding: EdgeInsets.only(left: Dimensions.width10),
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1576013551627-0cc20b96c2a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Column(children: [
                          BigText(
                              text: "สระว่ายน้ำ",
                              size: Dimensions.font20,
                              color: AppColors.whiteColor),
                          const SmallText(
                              text: "ชั้น 7 อาคาร ซี",
                              color: AppColors.whiteColor)
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.facilityBooking);
                },
                child: Padding(
                  padding: EdgeInsets.only(right: Dimensions.width10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1542766788-a2f588f447ee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1176&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Column(children: [
                          BigText(
                              text: "ห้องฟิตเนส",
                              size: Dimensions.font20,
                              color: AppColors.whiteColor),
                          const SmallText(
                              text: "ชั้น 7 อาคาร ซี",
                              color: AppColors.whiteColor)
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.facilityBooking);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                  child: Container(
                    padding: EdgeInsets.only(left: Dimensions.width10),
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://plus.unsplash.com/premium_photo-1661928260943-4aa36c5e1acc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1288&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Column(children: [
                          BigText(
                              text: "ห้องรับรอง",
                              size: Dimensions.font20,
                              color: AppColors.whiteColor),
                          const SmallText(
                              text: "ชั้น 7 อาคาร ซี",
                              color: AppColors.whiteColor)
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: Dimensions.width10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1631889993959-41b4e9c6e3c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1074&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(children: [
                        BigText(
                            text: "อ่างจากุชชี่",
                            size: Dimensions.font20,
                            color: AppColors.whiteColor),
                        const SmallText(
                            text: "อาคาร สวีท", color: AppColors.whiteColor)
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                child: Container(
                  padding: EdgeInsets.only(left: Dimensions.width10),
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1514914197726-5a7c4ab2d6ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(children: [
                        BigText(
                            text: "ห้องสนุกเกอร์",
                            size: Dimensions.font20,
                            color: AppColors.whiteColor),
                        const SmallText(
                            text: "ชั้น 26 สวีท", color: AppColors.whiteColor)
                      ]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: Dimensions.width10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1534438327276-14e5300c3a48?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(children: [
                        BigText(
                            text: "ห้องสควอช",
                            size: Dimensions.font20,
                            color: AppColors.whiteColor),
                        const SmallText(
                            text: "ชั้น 28", color: AppColors.whiteColor)
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                child: Container(
                  padding: EdgeInsets.only(left: Dimensions.width10),
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1630703178161-1e2f9beddbf8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(children: [
                        BigText(
                            text: "ห้องฟิตเนส",
                            size: Dimensions.font20,
                            color: AppColors.whiteColor),
                        const SmallText(
                            text: "ชั้น 7 M", color: AppColors.whiteColor)
                      ]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: Dimensions.width10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://plus.unsplash.com/premium_photo-1675615667993-1ad49a0a1720?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(children: [
                        BigText(
                            text: "ห้องดูหนัง",
                            size: Dimensions.font20,
                            color: AppColors.whiteColor),
                        const SmallText(
                            text: "ชั้น 7 M อาคาร ซี",
                            color: AppColors.whiteColor)
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.height10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
                child: Container(
                  padding: EdgeInsets.only(left: Dimensions.width10),
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://plus.unsplash.com/premium_photo-1661903136240-a97367001a64?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(children: [
                        BigText(
                            text: "ห้องรับรอง",
                            size: Dimensions.font20,
                            color: AppColors.whiteColor),
                        const SmallText(
                            text: "ชั้น 7 M", color: AppColors.whiteColor)
                      ]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: Dimensions.width10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1583416750470-965b2707b355?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(children: [
                        BigText(
                            text: "ห้องซาวน่า",
                            size: Dimensions.font20,
                            color: AppColors.whiteColor),
                        const SmallText(
                            text: "ชั้นดาดฟ้า", color: AppColors.whiteColor)
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.height10),
        ],
      ),
      ListView(
        children: const <Widget>[NoBooking()],
      )
    ]);
  }
}
