import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:acs_community/routes/route_helper.dart';
import 'package:get/get.dart';

class BodyParcel extends StatelessWidget {
  const BodyParcel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ListView(
        children: [
          SizedBox(height: Dimensions.height10),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.newParcel);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      Dimensions.width15), // Set the left and right margin
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: Dimensions.height80,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                ),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions.width80,
                      height: Dimensions.height80,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1614018453562-77f6180ce036?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: 'ACS', size: Dimensions.font16),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: '2306-878', size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  BigText(
                                      text: '3300/25', size: Dimensions.font16),
                                  SizedBox(width: Dimensions.width10),
                                  const Icon(
                                    Icons.home,
                                    color: AppColors.mainColor,
                                  )
                                ]),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: '20 มิ.ย 66 / 15:56 น.',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: Dimensions.height10),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.newParcel);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      Dimensions.width15), // Set the left and right margin
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: Dimensions.height80,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                ),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions.width80,
                      height: Dimensions.height80,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1614018453562-77f6180ce036?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: 'ACS', size: Dimensions.font16),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: '2306-877', size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  BigText(
                                      text: '3300/25', size: Dimensions.font16),
                                  SizedBox(width: Dimensions.width10),
                                  const Icon(
                                    Icons.home,
                                    color: AppColors.mainColor,
                                  )
                                ]),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: '20 มิ.ย 66 / 12:06 น.',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      ListView(
        children: [
          SizedBox(height: Dimensions.height10),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.historyParcel);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      Dimensions.width15), // Set the left and right margin
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: Dimensions.height80,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                ),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions.width80,
                      height: Dimensions.height80,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1614018453562-77f6180ce036?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: 'ACS', size: Dimensions.font16),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: 'รับโดย: คุณสายชล',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  BigText(
                                      text: '3300/25', size: Dimensions.font16),
                                  SizedBox(width: Dimensions.width10),
                                  const Icon(
                                    Icons.home,
                                    color: AppColors.mainColor,
                                  )
                                ]),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: '21 มิ.ย 66 / 10:16 น.',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: Dimensions.height10),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.historyParcel);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      Dimensions.width15), // Set the left and right margin
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: Dimensions.height80,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                ),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions.width80,
                      height: Dimensions.height80,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1614018453562-77f6180ce036?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: 'ACS', size: Dimensions.font16),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: 'รับโดย: คุณสายชล',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  BigText(
                                      text: '3300/25', size: Dimensions.font16),
                                  SizedBox(width: Dimensions.width10),
                                  const Icon(
                                    Icons.home,
                                    color: AppColors.mainColor,
                                  )
                                ]),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: '20 มิ.ย 66 / 14:16 น.',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: Dimensions.height10),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.historyParcel);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      Dimensions.width15), // Set the left and right margin
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: Dimensions.height80,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                ),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions.width80,
                      height: Dimensions.height80,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1614018453562-77f6180ce036?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: 'ACS', size: Dimensions.font16),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: 'รับโดย: คุณสายชล',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  BigText(
                                      text: '3300/25', size: Dimensions.font16),
                                  SizedBox(width: Dimensions.width10),
                                  const Icon(
                                    Icons.home,
                                    color: AppColors.mainColor,
                                  )
                                ]),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: '19 มิ.ย 66 / 14:16 น.',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: Dimensions.height10),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.historyParcel);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      Dimensions.width15), // Set the left and right margin
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: Dimensions.height80,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                ),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions.width80,
                      height: Dimensions.height80,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1614018453562-77f6180ce036?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: 'ACS', size: Dimensions.font16),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: 'รับโดย: คุณสายชล',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  BigText(
                                      text: '3300/25', size: Dimensions.font16),
                                  SizedBox(width: Dimensions.width10),
                                  const Icon(
                                    Icons.home,
                                    color: AppColors.mainColor,
                                  )
                                ]),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: '18 มิ.ย 66 / 14:16 น.',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: Dimensions.height10),
          GestureDetector(
            onTap: () {
              Get.toNamed(RouteHelper.historyParcel);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      Dimensions.width15), // Set the left and right margin
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: Dimensions.height80,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                ),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions.width80,
                      height: Dimensions.height80,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1614018453562-77f6180ce036?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: 'ACS', size: Dimensions.font16),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: 'รับโดย: คุณสายชล',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: Dimensions.width5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  BigText(
                                      text: '3300/25', size: Dimensions.font16),
                                  SizedBox(width: Dimensions.width10),
                                  const Icon(
                                    Icons.home,
                                    color: AppColors.mainColor,
                                  )
                                ]),
                            SizedBox(height: Dimensions.height5),
                            SmallText(
                                text: '17 มิ.ย 66 / 14:16 น.',
                                size: Dimensions.font14),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: Dimensions.height20),
                child: SmallText(
                  text: "รายการพััสดุจะแสดง 30 รายการล่าสุดต่อห้อง",
                  size: Dimensions.font14,
                  color: AppColors.darkGreyColor,
                ),
              )),
        ],
      )
    ]);
  }
}
