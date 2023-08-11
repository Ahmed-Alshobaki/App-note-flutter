import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note/core/resources/manager_routes.dart';

import '../../controlle/Login/LoginController.dart';
import '../widget/TextFormField/TextFormFieldcustom.dart';

class Login extends StatelessWidget {
  Login({super.key});

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.black87,
        ),
        body: ListView(
          children: [
            Form(
              key:controller.key ,
                child: Column(
              children: [
                SizedBox(height: 25,),
                Image.asset("assets/splash/Group.png",cacheHeight: 100,cacheWidth: 100,),
                SizedBox(height: 80,),
                TextFormFieldcustom(
                  tital: 'Email',
                  hint: 'Enter your email address',
                  Iconn: Icon(Icons.email),
                  obscureText: false,
                  controller: controller.email,),
                SizedBox(height: 30,),
                TextFormFieldcustom(
                  tital: 'password',
                  hint: 'Enter your password address',
                  Iconn: Icon(Icons.password),
                  obscureText: false,
                  controller: controller.password,)
              ],
            )),
            SizedBox(height: 30,),
            TextButton(onPressed: (){}, child: Text("login"),style: TextButton.styleFrom(backgroundColor: Colors.black87),),
            SizedBox(height: 30,),
            Center(
              child: InkWell(
                onTap: (){
                  Get.offNamed(ManagerRoutes.Singup);
                },
                child: Text("sing up",style: TextStyle(fontSize: 25),),
              ),
            )
          ],
        )
    );
  }
}
