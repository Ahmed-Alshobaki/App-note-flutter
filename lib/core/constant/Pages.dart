import 'package:get/get.dart';


import '../../view/welcome page/Home/Home.dart';
import '../../view/welcome page/splash/splash.dart';

import '../resources/manager_routes.dart';

class Pages {
   static List<GetPage<dynamic>>? Page= [

    GetPage(name: ManagerRoutes.splash, page: () => Splash()),
     GetPage(name: ManagerRoutes.home, page: () => Home()),



  ];


}