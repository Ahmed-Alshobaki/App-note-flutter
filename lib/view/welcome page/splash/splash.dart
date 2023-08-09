import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controlle/splash/splash_controlle.dart';
import '../../../core/resources/manager_assets.dart';
import '../../../core/resources/manager_colors.dart';


class Splash extends StatelessWidget {
   Splash({super.key});

  @override
  Widget build(BuildContext context) {
    SplashControlle controlle = Get.put(SplashControlle());
    controlle.change();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.yellow.shade200,
            Colors.yellow.shade500,
          ],begin: Alignment.bottomLeft,end: Alignment.topRight)
        ),
        alignment: Alignment.center,
        child: Image.asset(ManagerAssets.group_splash,height: 150,width: 150,filterQuality:FilterQuality.high,),
      )
    );
  }
}
