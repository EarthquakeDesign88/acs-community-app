import 'package:acs_community/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';

class NoInformation extends StatelessWidget {
  const NoInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.library_books_outlined,
            color: AppColors.greyColor,
            size: 150,
          ),
          BigText(text: "ไม่มีระเบียบชุมชน", size: Dimensions.font26),
          SizedBox(height: Dimensions.height10),
          const SmallText(
              text: "เมื่อมีรายการระเบียบชุมชน ข้อมูลจะแสดงในหน้านี้")
        ],
      ),
    );
  }
}
