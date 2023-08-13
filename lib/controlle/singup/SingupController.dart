import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:note/core/resources/manager_routes.dart';

import '../../core/resources/ManagerConstant.dart';
import '../../view/widget/crud.dart';

class SingupController extends GetxController {
  bool isloding = false;
  GlobalKey<FormState> key1 = GlobalKey();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController username = new TextEditingController();

  Card1 cards = new Card1();
  singup() async {
    if (key1.currentState!.validate()) {
      isloding = true;
      update();
      var Request = await cards.postRequest(ManagerConstant.linkSingup, {
        "username": username.text,
        "email": email.text,
        "password": password.text,
      });
      await Future.delayed(Duration(seconds: 3));
      Get.toNamed(ManagerRoutes.Login);
      isloding = false;
      update();
      // if (Request["1"] == "1") {
      // } else {}
    }
  }
}
