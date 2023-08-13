import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note/controlle/services/servise.dart';
import 'package:note/view/welcome%20page/Home/Home.dart';
import 'core/constant/Pages.dart';
import 'core/resources/manager_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding.instance.addPostFrameCallback((_)=>yo)
  await Sharedzon().oninit();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Sharedzon sharedd = Get.find();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: sharedd.sharedPreferences.getString("id") == null
      //   ? ManagerRoutes.splash
      //   : ManagerRoutes.Login,
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
