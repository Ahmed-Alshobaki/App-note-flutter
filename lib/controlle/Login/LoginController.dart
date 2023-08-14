import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note/controlle/services/servise.dart';
import 'package:note/core/resources/ManagerConstant.dart';
import 'package:note/core/resources/manager_routes.dart';
import 'package:note/view/widget/crud.dart';

class LoginController extends GetxController {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  Sharedzon shader = Get.find();
  Card1 card1 = Card1();
  gotoHomePage() async {
    if (key.currentState!.validate()) {
      var data = await card1.postRequest(ManagerConstant.linkligon, {
        "email": email.text,
        "password": password.text,
      });
      print(data['success']);

      if (data['success'] == true) {
        shader.sharedPreferences.setString("id", data['data']['id'].toString());
        print(data['data']['id'].toString());
        Get.offNamed(ManagerRoutes.home);
        print(data['message']); // نجاح تسجيل الدخول
      } else {
        print(data['message']); // فشل تسجيل الدخول
      }
    }
  }
}
