import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/pages/parcel/components/body_new_parcel.dart';

class NewParcelPage extends StatefulWidget {
  const NewParcelPage({Key? key}) : super(key: key);

  @override
  State<NewParcelPage> createState() => _NewParcelPageState();
}

class _NewParcelPageState extends State<NewParcelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.whiteColor,
          iconTheme: const IconThemeData(color: AppColors.darkGreyColor),
          centerTitle: true,
          title: BigText(text: "พัสดุ 2306-878", size: Dimensions.font20)),
      backgroundColor: AppColors.menuColor,
      body: const BodyNewParcel(),
    );
  }
}
