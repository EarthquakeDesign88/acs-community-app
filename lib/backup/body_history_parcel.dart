import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:acs_community/widgets/bottom_line.dart';
import 'package:acs_community/widgets/fullscreen_image.dart';

class BodyHistoryParcel extends StatefulWidget {
  const BodyHistoryParcel({Key? key}) : super(key: key);

  @override
  State<BodyHistoryParcel> createState() => _BodyHistoryParcelState();
}

class _BodyHistoryParcelState extends State<BodyHistoryParcel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: AppColors.mainColor,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ],
        ),
        Positioned(
          top: Dimensions.height20,
          left: Dimensions.width20,
          right: Dimensions.width20,
          child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: MediaQuery.of(context).size.height - 130,
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
                      height: 150,
                      width: MediaQuery.of(context).size.width - 95,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1614018453562-77f6180ce036?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: Dimensions.height50,
                          width: MediaQuery.of(context).size.width - 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(Dimensions.radius20),
                              bottomRight: Radius.circular(Dimensions.radius20),
                            ),
                            color: Colors.black.withOpacity(
                                0.5), // Adjust the opacity as needed
                          ), // Adjust the color as needed
                          child: const Center(
                              child: SmallText(
                                  text: "พัสดุรับแล้ว",
                                  color: AppColors.whiteColor)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Dimensions.height10),
                BigText(text: "รายละเอียดการรับพัสดุ", size: Dimensions.font20),
                SizedBox(height: Dimensions.height10),
                Row(children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: Dimensions.width20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: Dimensions.height2),
                          SmallText(
                              text: "รับพัสดุเมื่อ", size: Dimensions.font16),
                          SizedBox(height: Dimensions.height2),
                          const BottomLine(),
                          SizedBox(height: Dimensions.height2),
                          SmallText(
                              text: "ชื่อผู้มารับพัสดุ",
                              size: Dimensions.font16),
                          SizedBox(height: Dimensions.height2),
                          const BottomLine(),
                          SizedBox(height: Dimensions.height2),
                          SmallText(
                              text: "จ่ายพัสดุออกโดย", size: Dimensions.font16),
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
                              text: "23 มิ.ย. 66 /13.20 น.",
                              size: Dimensions.font16,
                              color: AppColors.blackColor),
                          SizedBox(height: Dimensions.height2),
                          const BottomLine(),
                          SizedBox(height: Dimensions.height2),
                          SmallText(
                              text: "คุณสายชล",
                              size: Dimensions.font16,
                              color: AppColors.blackColor),
                          SizedBox(height: Dimensions.height2),
                          const BottomLine(),
                          SizedBox(height: Dimensions.height2),
                          SmallText(
                              text: "Pornphimon",
                              size: Dimensions.font16,
                              color: AppColors.blackColor),
                          SizedBox(height: Dimensions.height2),
                          const BottomLine(),
                        ],
                      ),
                    ),
                  ),
                ]),
                SizedBox(height: Dimensions.height30),
                const SizedBox(width: 300, child: BottomLine(width: 0.3)),
                SizedBox(height: Dimensions.height20),
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
                          SmallText(
                              text: "บ้านเลขที่", size: Dimensions.font16),
                          SizedBox(height: Dimensions.height2),
                          const BottomLine(),
                          SizedBox(height: Dimensions.height2),
                          SmallText(
                              text: "ชื่อเจ้าของพัสดุ",
                              size: Dimensions.font16),
                          SizedBox(height: Dimensions.height2),
                          const BottomLine(),
                          SizedBox(height: Dimensions.height2),
                          SmallText(
                              text: "หมายเลขติดตามพัสดุ",
                              size: Dimensions.font16),
                          SizedBox(height: Dimensions.height2),
                          const BottomLine(),
                          SizedBox(height: Dimensions.height2),
                          SmallText(
                              text: "บริการขนส่ง", size: Dimensions.font16),
                          SizedBox(height: Dimensions.height2),
                          const BottomLine(),
                          SizedBox(height: Dimensions.height2),
                          SmallText(
                              text: "ลักษณะพัสดุ", size: Dimensions.font16),
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
              ])),
        ),
      ],
    );
  }
}
