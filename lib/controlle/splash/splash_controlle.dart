

import 'package:get/get.dart';

import '../../core/resources/manager_routes.dart';
import '../../core/resources/manager_time.dart';

class SplashControlle extends GetxController{


  void change()async{
    Future.delayed(const Duration(seconds: ManagerTime.s3),()async{
      await Get.offNamed(ManagerRoutes.Login);
    });

  }

}