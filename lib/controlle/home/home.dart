import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:note/core/storage/local/database/databaseprovider.dart';

import '../../core/resources/manager_routes.dart';

class home extends GetxController {
  List z = [];
  SqlDb db = new SqlDb();

  void goto_addnot() {
    Get.offNamed(ManagerRoutes.Addnotes);
  }

  void delete_add(String s) async {
    int index = await db.deleteData("DELETE FROM notes WHERE  id = ${s} ");
    z.removeWhere((element) => element["id"] == "${s}");
    update();
  }

  readdata(List z) async {
    List<Map> read = await db.readData("SELECT * FROM notes");
    z.clear();
    z.addAll(read.toList());
    update();
  }

  @override
  void onInit() {
    readdata(z);
    update();
    print("onInit");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady");
    super.onReady();
  }
}
