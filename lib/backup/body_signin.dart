// import 'package:flutter/material.dart';
// import 'package:acs_community/utils/constants.dart';
// import 'package:acs_community/widgets/social_card.dart';
// import 'package:acs_community/pages/home/home_page.dart';
// import 'package:acs_community/pages/sign_up/sign_up_page.dart';

// class Body extends StatelessWidget {
//   const Body({Key? key}): super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final currentYear = DateTime.now().year;

//     return SafeArea(
//       child: SizedBox(
//       width: double.infinity,
//       height: MediaQuery.of(context).size.height,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Column(
//                     children: <Widget>[
//                       const Text("เข้าสู่ระบบ",
//                           style: TextStyle(
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                           )),
//                       const SizedBox(height: 10),
//                       Container(
//                         width: 320, // Set the desired width
//                         decoration: const BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(color: AppColors.blackColor),
//                           ),
//                         ),
//                         child: const TextField(
//                           decoration: InputDecoration(
//                             hintText: 'เบอร์โทรศัพท์หรืออีเมล',
//                             border: InputBorder.none,
//                           ),
//                           style: TextStyle(
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 15),
//                       Column(children: <Widget>[
//                         MaterialButton(
//                           minWidth: 320,
//                           height: 40,
//                           color: const Color(0xFFC5C5C5),
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const HomePage()));
//                           },
//                           child: const Text(
//                             "เข้าสู่ระบบ",
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                               fontSize: 18,
//                               color: AppColors.greyColor,
//                             ),
//                           ),
//                         ),
//                       ]),
//                       const SizedBox(height: 20),
//                       const Text(
//                         "หรือ",
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: AppColors.greyColor,
//                         ),
//                       ),
//                       const SizedBox(height: 2),
//                       SocialCard(
//                           text: "เข้าสู่ระบบด้วย Facebook",
//                           icon: Icons.facebook,
//                           color: const Color(0xFF1335E0),
//                           onPressed : () async {}),
//                       const SizedBox(height: 2),
//                       SocialCard(
//                           text: "ลงชื่อเข้าด้วย Google",
//                           icon: Icons.email,
//                           color: const Color(0xFFBF0808),
//                           onPressed: () async {}),
//                       const SizedBox(height: 2),
//                       SocialCard(
//                           text: "ลงชื่อเข้าด้วย Apple",
//                           icon: Icons.apple,
//                           color: const Color(0xFF000000),
//                           onPressed: () async {}),
//                       const SizedBox(height: 15),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pushNamed(context, SignUpPage.routeName);
//                         },
//                         child: const Text(
//                           "ผู้ใช้ใหม่กด ลงทะเบียน",
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: AppColors.greyColor,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 35),
//                       const Text(
//                         "ต้องการความช่วยเหลือ ติดต่อ LINE @acscommunity",
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: AppColors.greyColor,
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       const Text(
//                         "version 1.0.0.1",
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: AppColors.greyColor,
//                         ),
//                       ),
//                       const SizedBox(height: 5),
//                       Text(
//                         "©$currentYear acs.app All rights reserved",
//                         style: const TextStyle(
//                           fontSize: 14,
//                           color: AppColors.greyColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//     ));
//   }
// }
