import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:note/controlle/services/servise.dart';
import 'package:note/core/resources/manager_routes.dart';

import '../../../controlle/home/home.dart';
import '../../../core/storage/local/database/databaseprovider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  SqlDb db = SqlDb();
  home co = Get.put(home());
  Sharedzon sharedzon = Get.find();

  @override
  Widget build(BuildContext context) {
    co.onInit();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            co.goto_addnot();
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text("Notes"),
        ),
        body: GetBuilder<home>(
          init: home(),
          builder: (GetxController controller) {
            return FutureBuilder(
                future: co.getdataview(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data['success'] == false) {
                      return Center(
                        child: Text(snapshot.data['message']),
                      );
                    }
                    return ListView.builder(
                        itemCount: snapshot.data["data"].length,
                        itemBuilder: (context, i) {
                          return Card(
                            child: ListTile(
                              leading: Icon(Icons.note),
                              title:
                                  Text("${snapshot.data['data'][i]['title']}"),
                              subtitle:
                                  Text("${snapshot.data['data'][i]['body']}"),
                              trailing: IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () {
                                  Get.toNamed(ManagerRoutes.Addnotes,
                                      parameters: {
                                        "index": "${snapshot.data['data'][i]}"
                                      });
                                },
                              ),
                            ),
                          );
                        });
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                });
          },
        ));
  }
}
