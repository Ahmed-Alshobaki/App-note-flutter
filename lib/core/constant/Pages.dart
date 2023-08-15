import 'package:get/get.dart';
import 'package:note/view/edit/edit.dart';

import '../../view/add/addnote.dart';
import '../../view/auth/Login.dart';

import '../../view/auth/singup.dart';
import '../../view/welcome page/Home/Home.dart';
import '../../view/welcome page/Home/HomeVeiw.dart';
import '../../view/welcome page/splash/splash.dart';

import '../resources/manager_routes.dart';

class Pages {
  static List<GetPage<dynamic>>? Page = [
    GetPage(name: ManagerRoutes.splash, page: () => Splash()),
    GetPage(name: ManagerRoutes.home, page: () => Home()),
    GetPage(name: ManagerRoutes.Addnotes, page: () => Addnotes()),
    GetPage(name: ManagerRoutes.View, page: () => View()),
    GetPage(name: ManagerRoutes.Login, page: () => Login()),
    GetPage(name: ManagerRoutes.Singup, page: () => Singup()),
    GetPage(name: ManagerRoutes.editnotes, page: () => editnotes()),
  ];
}
