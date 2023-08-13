import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:note/controlle/edit/edit.dart';
import 'package:note/core/resources/manager_routes.dart';
import 'package:note/core/storage/local/database/databaseprovider.dart';

import '../../controlle/add/addcontrolle.dart';
import '../../controlle/home/home.dart';

class editnotes extends StatelessWidget {
  editnotes({super.key});
  edit1 controlle = Get.put(edit1());
  SqlDb db = SqlDb();

  //final index = int.parse(paramss['index'] ?? '0');
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
                        onPressed: () {
                          // await notes.getupdate("${int.parse(nmbuer)}");
                        },
                        child: Text(
                          "edit",
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
