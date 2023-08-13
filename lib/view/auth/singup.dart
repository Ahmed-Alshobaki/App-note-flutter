import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:note/view/widget/validator.dart';

import '../../controlle/singup/SingupController.dart';
import '../../core/resources/manager_routes.dart';
import '../widget/TextFormField/TextFormFieldcustom.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    SingupController singupcontroller = Get.put(SingupController());
    return Scaffold(
        appBar: AppBar(
          title: Text('singup'),
          backgroundColor: Colors.black87,
        ),
        body: GetBuilder<SingupController>(
          builder: (controller) {
            return singupcontroller.isloding
                ? Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                  )
                : ListView(
                    children: [
                      Container(
                        margin: EdgeInsetsDirectional.symmetric(horizontal: 15),
                        child: Form(
                            key: singupcontroller.key1,
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
                                  controller: singupcontroller.username,
                                  validator1: (val) {
                                    return validatorr(val!, 5, "username");
                                  },
                                  tital: 'username',
                                  hint: 'Enter your email username',
                                  Iconn: Icon(Icons.person),
                                  obscureText: false,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFormFieldcustom(
                                  controller: singupcontroller.email,
                                  validator1: (val) {
                                    return validatorr(val!, 255, "Email");
                                  },
                                  tital: 'Email',
                                  hint: 'Enter your email address',
                                  Iconn: Icon(Icons.email),
                                  obscureText: false,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextFormFieldcustom(
                                  controller: singupcontroller.password,
                                  validator1: (val) {
                                    return validatorr(val!, 5, "password");
                                  },
                                  tital: 'password',
                                  hint: 'Enter your password address',
                                  Iconn: Icon(Icons.password),
                                  obscureText: false,
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextButton(
                        onPressed: () async {
                          await singupcontroller.singup();
                        },
                        child: Text(
                          "sing up",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black87),
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
          },
        ));
  }
}
