import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note/view/auth/singup.dart';
import 'package:note/view/welcome%20page/Home/Home.dart';

import 'core/constant/Pages.dart';
import 'core/resources/manager_colors.dart';
import 'core/resources/manager_routes.dart';
import 'core/storage/local/database/databaseprovider.dart';
import 'core/storage/local/database/initdatabase.dart';
import 'view/welcome page/splash/splash.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: ManagerRoutes.splash,
      locale: Get.deviceLocale,
      theme: ThemeData(
          colorScheme:
              ThemeData().colorScheme.copyWith(primary: ManagerColors.black80),
          appBarTheme: const AppBarTheme(
              actionsIconTheme: IconThemeData(),
              elevation: 0,
              color: ManagerColors.white,
              iconTheme: IconThemeData(
                color: ManagerColors.black,
              ))),
      debugShowCheckedModeBanner: false,
      getPages: Pages.Page,
      home: Home(),
    );
  }
}
