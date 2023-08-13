import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:note/controlle/services/servise.dart';
import 'package:note/core/resources/ManagerConstant.dart';
import 'package:note/core/storage/local/database/databaseprovider.dart';
import 'package:note/view/widget/crud.dart';

import '../../core/resources/manager_routes.dart';

class home extends GetxController {
  List z = [];
  SqlDb db = new SqlDb();
  Card1 card = new Card1();
  Sharedzon sharedzon = Get.find();
  getdataview() async {
    var data = await card.postRequest(ManagerConstant.linkview,
        {"id": sharedzon.sharedPreferences.getString("id")});
    return data;
  }

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
