import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:acs_community/widgets/image_input_box.dart';

class BodySuggestion extends StatefulWidget {
  const BodySuggestion({Key? key}) : super(key: key);

  @override
  State<BodySuggestion> createState() => _BodySuggestionState();
}

class _BodySuggestionState extends State<BodySuggestion> {
  bool hasEnteredTopic = false;
  bool hasEnteredDetail = false;
  bool hasEnteredPhoneNumber = false;
  bool hasEnteredEmail = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimensions.height10),
            const Row(children: [
              SmallText(
                  text: "ข้อเสนอแนะสำหรับทีมบริหาร (นิติบุคคล)",
                  color: Colors.red),
            ]),
            SizedBox(height: Dimensions.height10),
            Row(
              children: [
                BigText(
                    text: "หัวข้อข้อเสนอแนะ",
                    color: AppColors.blackColor,
                    size: Dimensions.font16),
                BigText(text: "*", color: Colors.red, size: Dimensions.font16),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              color:
                  hasEnteredTopic ? AppColors.hoverInputText : Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'พิมพ์หัวข้อข้อเสนอแนะ',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    setState(() {
                      hasEnteredTopic = value.isNotEmpty;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Row(
              children: [
                BigText(
                    text: "รายละเอียด",
                    color: AppColors.blackColor,
                    size: Dimensions.font16),
                BigText(text: "*", color: Colors.red, size: Dimensions.font16),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              height: 80,
              color: hasEnteredDetail
                  ? AppColors.hoverInputText
                  : Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'พิมพ์รายละเอียดข้อเสนอแนะ',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    setState(() {
                      hasEnteredDetail = value.isNotEmpty;
                    });
                  },
                  maxLines: null, // Allow multiple lines of text
                  textInputAction: TextInputAction
                      .newline, // Change keyboard action to new line
                  onEditingComplete: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      final currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus &&
                          currentFocus.hasFocus) {
                        currentFocus.nextFocus();
                      }
                    });
                    // final currentFocus = FocusScope.of(context);
                    // currentFocus.nextFocus();
                  },
                ),
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Row(
              children: [
                BigText(
                    text: "เพิ่มรูป (ไม่เกิน 3 รูป)",
                    color: AppColors.blackColor,
                    size: Dimensions.font16),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            ImageInputBox(),
            SizedBox(height: Dimensions.height10),
            Row(
              children: [
                BigText(
                    text: "เบอร์โทรศัพท์สำหรับติดต่อกลับ",
                    color: AppColors.blackColor,
                    size: Dimensions.font16),
                BigText(text: "*", color: Colors.red, size: Dimensions.font16),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              color: hasEnteredPhoneNumber
                  ? AppColors.hoverInputText
                  : Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'พิมพ์เบอร์โทรศัพท์',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    setState(() {
                      hasEnteredPhoneNumber = value.isNotEmpty;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Row(
              children: [
                BigText(
                    text: "ส่งสำเนาไปยังอีเมลของคุณ",
                    color: AppColors.blackColor,
                    size: Dimensions.font16),
                BigText(text: "*", color: Colors.red, size: Dimensions.font16),
              ],
            ),
            SizedBox(height: Dimensions.height10),
            Container(
              color:
                  hasEnteredEmail ? AppColors.hoverInputText : Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'พิมพ์อีเมลของคุณ',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: InputBorder.none,
                  ),
                  onChanged: (value) {
                    setState(() {
                      hasEnteredEmail = value.isNotEmpty;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
