import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:note/core/resources/manager_routes.dart';

import '../../../controlle/add/addcontrolle.dart';
import '../../../controlle/home/home.dart';
import '../../../core/storage/local/database/databaseprovider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  SqlDb db = SqlDb();
  home co = Get.put(home());




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
      return  Container(
              margin:
              EdgeInsetsDirectional.symmetric(vertical: 5),
              child: ListView(
                children: [
                  MaterialButton(onPressed: () async {
                    // print( await readdata());
                    db.delete();
                  }),
                  GetBuilder<home>(

                    builder: (controller) {
                      return ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: co.z.length,
                          itemBuilder: (context, i) {
                            return Card(
                                margin:
                                EdgeInsetsDirectional.symmetric(vertical: 5),
                                child: GetBuilder<home>(
                                  init: home(),
                                  builder: (controller) {
                                    return GetBuilder<home>(
                                      init: home(),
                                      builder: (controller) {
                                        return GetBuilder<home>(
                                          init: home(),
                                          builder: ( controller) {
                                            return  ListTile(
                                              onTap: (){
                                                print(i);
                                                Get.toNamed(ManagerRoutes.View,parameters: {
                                                  "title":co.z[i]["title"],
                                                  "note":co.z[i]["note"],
                                                } );
                                              },
                                              title: Text(co.z[i]["title"]),
                                              subtitle: Text(co.z[i]["note"]),
                                              trailing: IconButton(onPressed: () {
                                                co.delete_add("${co.z[i]["id"]}");

                                                co.readdata(co.z);
                                                co.onInit();
                                              },
                                                icon: Icon(Icons.delete,
                                                  color: Colors.red,),),
                                            );
                                          },

                                        );
                                      },
                                    );
                                  },)
                            );
                          });
                    },)


                ],
              ),
            );

          },
        )

    );
  }
}
