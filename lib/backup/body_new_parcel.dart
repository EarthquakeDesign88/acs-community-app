import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:acs_community/widgets/bottom_line.dart';
import 'package:acs_community/widgets/fullscreen_image.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BodyNewParcel extends StatefulWidget {
  const BodyNewParcel({Key? key}) : super(key: key);

  @override
  State<BodyNewParcel> createState() => _BodyNewParcelState();
}

class _BodyNewParcelState extends State<BodyNewParcel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: AppColors.mainColor,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                        height:
                            Dimensions.height20), // Set the desired top margin
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Icon(
                                        Icons.close,
                                        color: AppColors.darkGreyColor,
                                        size: Dimensions.iconSize30,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 300,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.radius20),
                                    ),
                                    child: Center(
                                      child: QrImageView(
                                        backgroundColor: AppColors.whiteColor,
                                        data: '123456789',
                                        size: 250,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius20)),
                          child: QrImageView(
                              padding: const EdgeInsets.all(15.0),
                              backgroundColor: AppColors.whiteColor,
                              data: '123456789',
                              size: 170)),
                    ),
                    SizedBox(height: Dimensions.height15),
                    const SmallText(
                        text: "นำ QR code ให้เจ้าหน้าที่สแกน เพื่อรับพัสดุ",
                        color: AppColors.whiteColor),
                  ],
                ),
              ),
            ),
          ],
        ),
        // Positioned(
        //   top: 140,
        //   left: 380,
        //   child: Container(
        //     width: Dimensions.width40,
        //     height: Dimensions.height60,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(Dimensions.radius15), // Set the desired border radius
        //     ),
        //     child: ElevatedButton(
        //       onPressed: () {
        //         showDialog(
        //           context: context,
        //           builder: (context) {
        //             return AlertDialog(
        //               content: Column(
        //                 mainAxisSize: MainAxisSize.min,
        //                 children: [
        //                   Align(
        //                     alignment: Alignment.centerRight,
        //                     child: GestureDetector(
        //                       onTap: () {
        //                         Navigator.of(context).pop();
        //                       },
        //                       child: Icon(
        //                         Icons.close,
        //                         color: AppColors.darkGreyColor,
        //                         size: Dimensions.iconSize30,
        //                       ),
        //                     ),
        //                   ),
        //                   Container(
        //                     width: 300,
        //                     height: 300,
        //                     decoration: BoxDecoration(
        //                       borderRadius:
        //                           BorderRadius.circular(Dimensions.radius20),
        //                     ),
        //                     child: Center(
        //                       child: QrImage(
        //                         backgroundColor: AppColors.whiteColor,
        //                         data: '123456789',
        //                         size: 250,
        //                       ),
        //                     ),
        //                   )
        //                 ],
        //               ),
        //             );
        //           },
        //         );
        //       }, // Since GestureDetector handles the tap, set onPressed to null
        //       style: ElevatedButton.styleFrom(
        //         backgroundColor: AppColors.whiteColor,
        //         padding: EdgeInsets.zero,
        //       ),
        //       child: Align(
        //         alignment: Alignment.center,
        //         child: FractionallySizedBox(
        //           widthFactor: 0.7, // Adjust the width factor as needed
        //           heightFactor: 0.7, // Adjust the height factor as needed
        //           child: Icon(
        //             Icons.search,
        //             color: AppColors.mainColor,
        //             size: Dimensions.iconSize30,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.31,
          left: Dimensions.width20,
          right: Dimensions.width20,
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: MediaQuery.of(context).size.height * 0.52,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(
                  Dimensions.radius20), // Set the desired border radius
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FullScreenImage(
                          imageUrl:
                              'https://images.unsplash.com/photo-1614018453562-77f6180ce036?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width - 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1614018453562-77f6180ce036?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height10),
              BigText(text: "ข้อมูลพัสดุ", size: Dimensions.font20),
              SizedBox(height: Dimensions.height10),
              Row(children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: Dimensions.width20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: Dimensions.height2),
                        SmallText(text: "บ้านเลขที่", size: Dimensions.font16),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "ชื่อเจ้าของพัสดุ", size: Dimensions.font16),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "หมายเลขติดตามพัสดุ",
                            size: Dimensions.font16),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(text: "บริการขนส่ง", size: Dimensions.font16),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(text: "ลักษณะพัสดุ", size: Dimensions.font16),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "เข้าระบบเมื่อ", size: Dimensions.font16),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "นำเข้าระบบโดย", size: Dimensions.font16),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                      ]),
                )),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: Dimensions.width20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "3300/25",
                            size: Dimensions.font16,
                            color: AppColors.blackColor),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "ACS",
                            size: Dimensions.font16,
                            color: AppColors.blackColor),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "RK276725623TH",
                            size: Dimensions.font16,
                            color: AppColors.blackColor),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "Thailand Post",
                            size: Dimensions.font16,
                            color: AppColors.blackColor),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "ซองจดหมาย",
                            size: Dimensions.font16,
                            color: AppColors.blackColor),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "20 มิ.ย 66 / 15:56 น.",
                            size: Dimensions.font16,
                            color: AppColors.blackColor),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                        SizedBox(height: Dimensions.height2),
                        SmallText(
                            text: "นิติบุคคลอาคารชุด",
                            size: Dimensions.font16,
                            color: AppColors.blackColor),
                        SizedBox(height: Dimensions.height2),
                        const BottomLine(),
                      ],
                    ),
                  ),
                ),
              ]),
            ]),
          ),
        ),
      ],
    );
  }
}
