import 'package:flutter/material.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:acs_community/widgets/big_text.dart';
import 'package:acs_community/widgets/small_text.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'dart:async';

class BodyAuthAccess extends StatefulWidget {
  final String qrData;

  const BodyAuthAccess({
    Key? key,
    required this.qrData,
  }) : super(key: key);

  @override
  _BodyAuthAccessState createState() => _BodyAuthAccessState();
}

class _BodyAuthAccessState extends State<BodyAuthAccess> {
  int remainingSeconds = 180; // 3 minutes in seconds
  late Timer countdownTimer;

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        remainingSeconds--;
      });
      if (remainingSeconds <= 0) {
        timer.cancel(); // Stop the timer when countdown finishes
      }
    });
  }

  @override
  void dispose() {
    countdownTimer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String minutes = twoDigits(duration.inMinutes);
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
     return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BigText(text: "QR Code เพื่อใช้ยืนยันตัวตน", size: Dimensions.font20),
        QrImageView(
          data: widget.qrData,
          size: 200,
        ),
        SizedBox(height: Dimensions.height20),
        if (remainingSeconds > 0) // Check if the countdown is still running
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmallText(
                text: "โปรดสแกน QR Code ภายใน ",
                size: Dimensions.font16,
                color: AppColors.blackColor,
              ),
              SizedBox(width: Dimensions.width5),
              BigText(
                text: "${formatDuration(Duration(seconds: remainingSeconds))}",
                size: Dimensions.font16,
                color: AppColors.mainColor,
              ),
            ],
          ),
        if (remainingSeconds <= 0) // Display "timeOut" when countdown finishes
          BigText(
            text: "QR Code หมดอายุ ไม่สามารถใช้งานได้",
            size: Dimensions.font16,
            color: Colors.red,
          ),
        SizedBox(height: Dimensions.height10),
        SmallText(
          text: "นำ QR Code แนบที่เครื่องสแกน",
          size: Dimensions.font16,
          color: AppColors.blackColor,
        ),
        SizedBox(height: Dimensions.height20),
      ],
    ),
  );
  }
}
