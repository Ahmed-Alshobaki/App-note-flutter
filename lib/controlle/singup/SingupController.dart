import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:note/core/resources/manager_routes.dart';

import '../../core/resources/ManagerConstant.dart';
import '../../view/widget/crud.dart';

class SingupController extends GetxController {
  bool isloding = false;
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController username = new TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();

  Card1 cards = new Card1();
  singup() async {
    isloding = true;
    update();
    await Future.delayed(Duration(seconds: 3));
    var Request = await cards.postRequest(ManagerConstant.linkSingup, {
      "username": email.text,
      "email": email.text,
      "password": password.text,
    });
    Get.toNamed(ManagerRoutes.home);
    isloding = false;
    update();
    // if (Request["1"] == "1") {
    // } else {}
  }
}
