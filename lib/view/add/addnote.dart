import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:note/core/resources/manager_routes.dart';
import 'package:note/core/storage/local/database/databaseprovider.dart';

import '../../controlle/add/addcontrolle.dart';
import '../../controlle/home/home.dart';

class Addnotes extends StatelessWidget {
  Addnotes({super.key});

  addcontrolle controlle = Get.put(addcontrolle());
  home1 homecontrolle = Get.put(home1());
  SqlDb db = SqlDb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("add notes"),
      ),
      body: Container(
        margin: EdgeInsetsDirectional.symmetric(vertical: 50, horizontal: 20),
        child: ListView(
          children: [
            Form(
                key: controlle.from,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controlle.addtitle,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(),
                          disabledBorder: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controlle.addnote,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(),
                          disabledBorder: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black87),
                        onPressed: () async {
                          await controlle.getinsert();
                        },
                        child: Text(
                          "addnote",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black87),
                        onPressed: () {
                          showModalBottomSheet(context: context,
                              builder: (context) => Container(
                                height: 100,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: InkWell(
                                        onTap: ()async{
                                          XFile? file =  await ImagePicker().pickImage(source: ImageSource.gallery);
                                          controlle.myfila =  File(file!.path);
                                        },
                                        child: Container(child: Text("chooes image Gallery ",style: TextStyle(fontSize: 30))),
                                      ),
                                      width: double.infinity,
                                      alignment: Alignment.center,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsetsDirectional.only(top: 20),
                                      width: double.infinity,
                                      child: InkWell(onTap: ()async{
                                        XFile? file =  await ImagePicker().pickImage(source: ImageSource.camera);
                                        controlle.myfila =  File(file!.path);
                                      },
                                        child: Text("chooes image camera ",style: TextStyle(fontSize: 30),),
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                        },
                        child: Text(
                          "choose image",
                          style: TextStyle(color: Colors.white),
                        ))

                  ],
                ))
          ],
        ),
      ),
    );
  }
}
