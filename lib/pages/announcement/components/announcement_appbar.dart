import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';

class AnnouncementAppBar extends StatelessWidget
  implements PreferredSizeWidget {
  final int currentIndex;
  final Function(int) onTabChanged;

  const AnnouncementAppBar({
    required this.currentIndex,
    required this.onTabChanged,
  });
  

  @override
  Size get preferredSize =>
      const Size.fromHeight(100); //56.0 For Android or 44.0 For IOS

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
      iconTheme: const IconThemeData(
        color: AppColors.darkGreyColor,
      ),
      centerTitle: true,
      title: BigText(text: "ประกาศ", size: Dimensions.font20),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
      bottom: const TabBar(
        labelColor: AppColors.blackColor,
        indicatorColor: AppColors.mainColor,
        tabs: [
          Tab(text: 'ประกาศสำคัญ'),
          Tab(text: 'ข่าวสารทั่วไป'),
        ],
      ),
    );
  }
}
