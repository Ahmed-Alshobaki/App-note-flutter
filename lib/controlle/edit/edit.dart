import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note/core/resources/ManagerConstant.dart';
import 'package:note/core/resources/manager_routes.dart';
import 'package:note/view/widget/crud.dart';

class edit1 extends GetxController {
  GlobalKey<FormState> from = new GlobalKey<FormState>();
  TextEditingController addnote = TextEditingController();
  TextEditingController addtitle = TextEditingController();
  Card1 control = new Card1();
  Map<String, String?> data = Get.parameters;
  getupdate(String id) async {
    var data = await control.postRequest(ManagerConstant.linkupdate, {
      "title": addtitle.text,
      "body": addnote.text,
      "id": id,
    });
    if (data['success'] == true) {
      Get.toNamed(ManagerRoutes.home);
    }
  }
}
