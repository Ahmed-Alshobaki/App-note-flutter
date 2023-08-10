import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../../controlle/add/addcontrolle.dart';
import '../../../controlle/home/home.dart';
import '../../../core/storage/local/database/databaseprovider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  SqlDb db = SqlDb();
  home  co  = Get.put(home());
  Future<List<Map>> readdata() async {
    List<Map> read = await db.readData("SELECT * FROM notes");
    return read;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
          co.goto_addnot();
      },child: Icon(Icons.add),),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Notes"),
      ),
        body: Container(
      child: ListView(
        children: [
          TextButton(onPressed: ()async {
         List<Map> list=  await db.readData("SELECT * FROM notes");
         print(list);
          }, child:Text("ss") ),
          TextButton(onPressed: ()async {
              await db.delete();
          //  await db.insertData("INSERT INTO notes(note,title) VALUES ('ddd', 'dddd')",);
          }, child:Text("de") ),
          FutureBuilder(
            future:  readdata(),
            builder: (BuildContext context,AsyncSnapshot<List<Map>>snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                   itemCount: snapshot.data!.length,
                    itemBuilder: (context,i){
                    return Text(("${ snapshot.data![i]}"));
                });
              }
              return Text("");
            },
          ),

        ],
      ),
    ));
  }
}
