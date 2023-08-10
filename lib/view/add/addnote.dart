import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controlle/add/addcontrolle.dart';

class Addnotes extends StatelessWidget {
   Addnotes({super.key});
   addcontrolle controlle = Get.put(addcontrolle());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black87,title:const Text("add notes"),),
      body: Container(
        margin: EdgeInsetsDirectional.symmetric(vertical: 50,horizontal: 20),
        child: ListView(
          children: [
            Form(
              key:controlle.from ,
                child: Column(
              children: [
                  TextFormField(
                    controller: controlle.addtitle,
                   decoration: const InputDecoration(
                     focusedBorder: OutlineInputBorder(
                     ),
                     enabledBorder: OutlineInputBorder(
                     ),
                     errorBorder: OutlineInputBorder(
                     ),
                     disabledBorder: OutlineInputBorder(

                   )
                  ),
                  ),
                SizedBox(height: 20,),
                TextFormField(
                 controller: controlle.addnote,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                    ),
                    enabledBorder: OutlineInputBorder(
                    ),
                    errorBorder: OutlineInputBorder(
                    ),
                    disabledBorder: OutlineInputBorder(

                  )
                 ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
