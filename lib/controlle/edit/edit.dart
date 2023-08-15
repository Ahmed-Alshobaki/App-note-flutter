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

  GET(Map<String, dynamic> data) {
    print("${data['body']}+++++++++zon");
    addnote.text = data['body'];
    addtitle.text = data['title'];
  }

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }
}
