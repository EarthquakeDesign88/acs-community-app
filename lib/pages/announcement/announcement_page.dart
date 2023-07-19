import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/bottom_navbar.dart';
import 'package:acs_community/pages/announcement/components/body.dart';

class AnnouncementPage extends StatefulWidget {
  const AnnouncementPage({Key? key}) : super(key: key);

  @override
  State<AnnouncementPage> createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {
  int _currentIndex = 0;
  void _onTabChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.whiteColor,
          iconTheme: const IconThemeData(
            color: AppColors.darkGreyColor, // Set the color for the back button
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
                Tab(text: 'ประกาศสำคัญ'), // Add each tab with its label
                Tab(text: 'ข่าวสารทั่วไป'),
              ]),
        ),
        backgroundColor: AppColors.menuColor,
        body: const Body(),
        bottomNavigationBar: BottomNavbar(
          currentIndex: _currentIndex,
          onTabChanged: _onTabChanged,
        ),
      ),
    );
  }
}
