import 'package:acs_community/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/pages/parcel/components/body_history_parcel.dart';

class HistoryParcelPage extends StatefulWidget {
  const HistoryParcelPage({Key? key}) : super(key: key);

  @override
  State<HistoryParcelPage> createState() => _HistoryParcelPageState();
}

class _HistoryParcelPageState extends State<HistoryParcelPage> {
  bool isPopupVisible = false;

  void showPopupContainer() {
    setState(() {
      isPopupVisible = true;
    });

    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 120, // Adjust the height of the popup container
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: Dimensions.width30),
                  child: Row(children: [
                    const CustomIcon(bgColor: Colors.red, icon: Icons.delete),
                    SizedBox(width: Dimensions.width15),
                    BigText(
                        text: "ลบประวัติพัสดุ",
                        color: AppColors.blackColor,
                        size: Dimensions.font18)
                  ])),
            ],
          ),
        );
      },
    ).whenComplete(() {
      setState(() {
        isPopupVisible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        iconTheme: const IconThemeData(color: AppColors.darkGreyColor),
        centerTitle: true,
        title: BigText(text: "รับพัสดุ 2306-876 แล้ว", size: Dimensions.font20),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              showPopupContainer();
            },
          ),
        ],
      ),
      backgroundColor: AppColors.menuColor,
      body: const BodyHistoryParcel(),
    );
  }
}
