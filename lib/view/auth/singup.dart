import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controlle/singup/SingupController.dart';
import '../../core/resources/manager_routes.dart';
import '../widget/TextFormField/TextFormFieldcustom.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    SingupController controller = Get.put(SingupController());
    return Scaffold(
        appBar: AppBar(
          title: Text('singup'),
          backgroundColor: Colors.black87,
        ),
        body: controller.isloding==true?
            GetBuilder<SingupController>(
              init: SingupController(),
              builder: ( controller) {
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              );
            },)
            :
            GetBuilder<SingupController>(
              init:SingupController() ,
              builder: ( controller) {

              return    ListView(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.symmetric(horizontal: 15),
                    child: Form(
                        key: controller.key,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Image.asset(
                              "assets/splash/Group.png",
                              cacheHeight: 100,
                              cacheWidth: 100,
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            TextFormFieldcustom(
                              tital: 'username',
                              hint: 'Enter your email username',
                              Iconn: Icon(Icons.person),
                              obscureText: false,
                              controller: controller.username,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormFieldcustom(
                              tital: 'Email',
                              hint: 'Enter your email address',
                              Iconn: Icon(Icons.email),
                              obscureText: false,
                              controller: controller.email,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextFormFieldcustom(
                              tital: 'password',
                              hint: 'Enter your password address',
                              Iconn: Icon(Icons.password),
                              obscureText: false,
                              controller: controller.password,
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: ()async {

                      await  controller.singup();

                    },
                    child: Text("sing up",style: TextStyle(color: Colors.white),),
                    style: TextButton.styleFrom(backgroundColor: Colors.black87),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Get.offNamed(ManagerRoutes.Login);
                      },
                      child: Text(
                        "Login ",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  )
                ],
              );
            },)
    );
  }
}
