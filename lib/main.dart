import 'package:acs_community/pages/home/home_page.dart';
import 'package:acs_community/pages/payment_reminder/payment_reminder_page.dart';
import 'package:acs_community/pages/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:acs_community/routes/route_helper.dart';
import 'package:acs_community/utils/constants.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Initialize GetX
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Dimensions.init(context);

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ACS Community',
        // initialRoute: RouteHelper.getWelcome(),
        home: const HomePage(),
        getPages: RouteHelper.routes);
  }
}
