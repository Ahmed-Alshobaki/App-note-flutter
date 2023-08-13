import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:note/controlle/services/servise.dart';
import 'package:note/core/resources/ManagerConstant.dart';
import 'package:note/core/resources/manager_routes.dart';
import 'package:note/view/widget/crud.dart';

class addcontrolle extends GetxController {
  GlobalKey<FormState> from = new GlobalKey<FormState>();
  TextEditingController addnote = TextEditingController();
  TextEditingController addtitle = TextEditingController();
  Card1 control = new Card1();
  Sharedzon shared = Get.find();

  getinsert() async {
    var data = await control.postRequest(ManagerConstant.linkinsert, {
      "title": addtitle.text,
      "body": addnote.text,
      "iduser": shared.sharedPreferences.get("id"),
    });

    if (data['success'] == true) {
      Get.toNamed(ManagerRoutes.home);
    }
  }
}
