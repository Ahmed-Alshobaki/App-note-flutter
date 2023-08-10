import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../core/resources/manager_routes.dart';

class home extends GetxController {

  void goto_addnot(){
    Get.toNamed(ManagerRoutes.Addnotes);
  }

}