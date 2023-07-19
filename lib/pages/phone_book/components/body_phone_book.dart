import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:acs_community/widgets/bottom_line.dart';

class BodyPhoneBook extends StatelessWidget {
  const BodyPhoneBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ListView(children: [
        SizedBox(height: Dimensions.height10),
        Container(
            color: AppColors.whiteColor,
            child: Column(children: [
              SizedBox(height: Dimensions.height10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "ชั้น 7 C สระว่ายน้ำ",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "6006",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "รปภ ลานจอด P5B",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "6004",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "รปภ ลานจอด P7A",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "6005",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "ห้องช่าง",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "5005",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "ห้องช่าง",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "029374960",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "เคาน์เตอร์ชั้น 1 A",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "6000",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "เคาน์เตอร์ชั้น 1 B",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "6001",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "เคาน์เตอร์ชั้น 1 C",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "6002",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height10),
            ]))
      ]),
      ListView(children: [
        SizedBox(height: Dimensions.height10),
        Container(
            color: AppColors.whiteColor,
            child: Column(children: [
              SizedBox(height: Dimensions.height10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "Operator โทรจากสายภายในให้โชว์เบอร์",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "9",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "กองปราบปราม",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "1195",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "ศูนย์ดับเพลิงศรีอยุธยา",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "199",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "ศูนย์นเรนทร (รับแจ้งเจ็บป่วยฉุกเฉิน)",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "1669",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "สถานีดับเพลิงสุทธิสาร",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "022773688.9",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "สถานีตำรวจนครบาลพหลโยธิน",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "025122447.9",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "เหตุด่วนเหตุร้าย",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "191",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height10),
            ]))
      ]),
      ListView(children: [
        SizedBox(height: Dimensions.height10),
        Container(
            color: AppColors.whiteColor,
            child: Column(children: [
              SizedBox(height: Dimensions.height10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "เคาน์เตอร์โรงแรม",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "029374111",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.phone,
                        color: AppColors.mainColor,
                      ),
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: "เคาน์เตอร์โรงแรม",
                            size: Dimensions.font16,
                            color: AppColors.darkGreyColor),
                        SizedBox(height: Dimensions.height5),
                        SmallText(
                            text: "7777",
                            size: Dimensions.font16,
                            color: AppColors.mainColor)
                      ],
                    ),
                    const Icon(
                      Icons.phone,
                      color: AppColors.mainColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.height10),
            ]))
      ]),
    ]);
  }
}
