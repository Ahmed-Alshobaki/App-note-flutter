import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, String?> list = Get.parameters;
    return  Scaffold(
        appBar: AppBar(),
      body: Center(
        child: Text("${list["title"]!}+${list["note"]!}"),
      ),
    );
  }
}
