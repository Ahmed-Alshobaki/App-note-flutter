import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  TextEditingController   email = new TextEditingController();
  TextEditingController   password = new TextEditingController();
    GlobalKey<FormState>  key = GlobalKey<FormState>();
}


