import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:note/core/resources/manager_routes.dart';
import 'package:note/view/widget/validator.dart';

import '../../controlle/Login/LoginController.dart';
import '../widget/TextFormField/TextFormFieldcustom.dart';

class Login extends StatelessWidget {
  Login({super.key});

  LoginController Logincontroller = Get.put(LoginController());

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
                key: Logincontroller.key,
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
                      validator1: (val) {
                        return validatorr(val!, 255, "email");
                      },
                      tital: 'Email',
                      hint: 'Enter your email address',
                      Iconn: Icon(Icons.email),
                      obscureText: false,
                      controller: Logincontroller.email,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormFieldcustom(
                      validator1: (val) {
                        return validatorr(val!, 5, "password");
                      },
                      tital: 'password',
                      hint: 'Enter your password address',
                      Iconn: Icon(Icons.password),
                      obscureText: false,
                      controller: Logincontroller.password,
                    )
                  ],
                )),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () async {
                await Logincontroller.gotoHomePage();
              },
              child: Text("login"),
              style: TextButton.styleFrom(backgroundColor: Colors.black87),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Get.offNamed(ManagerRoutes.Singup);
                },
                child: Text(
                  "sing up",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ],
        ));
  }
}
