import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:note/core/resources/manager_routes.dart';
import 'package:note/core/storage/local/database/databaseprovider.dart';

import '../../controlle/add/addcontrolle.dart';
import '../../controlle/home/home.dart';

class Addnotes extends StatelessWidget {
  Addnotes({super.key});
  addcontrolle controlle = Get.put(addcontrolle());
  home homecontrolle = Get.put(home());
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
                          int number = await db.insertData(
                              "INSERT INTO notes (note, title) VALUES ('${controlle.addnote.text}', '${controlle.addtitle.text}')");
                          if (number > 0) {
                            Get.offNamed(ManagerRoutes.home);
                            homecontrolle.readdata(homecontrolle.z);
                          }
                        },
                        child: Text(
                          "addnote",
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
