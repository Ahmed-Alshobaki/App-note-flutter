import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:note/core/resources/manager_routes.dart';

import '../../core/resources/ManagerConstant.dart';
import '../../view/widget/crud.dart';

class SingupController extends GetxController{

  TextEditingController   email = new TextEditingController();
  TextEditingController   password = new TextEditingController();
  TextEditingController   username = new TextEditingController();
    GlobalKey<FormState>  key = GlobalKey<FormState>();

  Card1 cards = new Card1();
  singup()async{
    var Request1  = await  cards.postRequest(ManagerConstant.linkSingup, {
      "username" :email.text,
      "email" :email.text,
      "password" :password.text,

    });
      // if (Request1['status']=="successful") {
      //   Get.to(ManagerRoutes.home);
      // }
  }

}


