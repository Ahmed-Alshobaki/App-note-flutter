import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:note/core/resources/ManagerConstant.dart';
import 'package:note/core/resources/manager_routes.dart';
import 'package:note/view/widget/crud.dart';

class edit1 extends GetxController {
  GlobalKey<FormState> from = new GlobalKey<FormState>();
  TextEditingController addnote = TextEditingController();
  TextEditingController addtitle = TextEditingController();
  Card1 control = new Card1();
  File? myfila;

  getedit(String id, String image) async {
    var data;
    if (myfila == null) {
      data = await control.postRequest(
        ManagerConstant.linkupdate,
        {
          "title": addtitle.text,
          "body": addtitle.text,
          "id": id,
          "nameimage": image,
        },
      );
    } else {
      data = await control.postRequestFile(
          ManagerConstant.linkupdate,
          {
            "title": addtitle.text,
            "body": addtitle.text,
            "id": id,
            "nameimage": image,
          },
          myfila!);
    }
    if (data["success"] == true) {
      Get.offNamed(ManagerRoutes.home);
    }
  }

  getdelete(String id, String image) async {
    var data = await control.postRequest(ManagerConstant.linkdelete, {
      "id": id,
      "image": image,
    });
    if (data["success"] == true) {
      Get.offNamed(ManagerRoutes.home);
    }
  }

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
