import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedzon extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<Sharedzon> onshear() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  oninit() async {
    await Get.putAsync(() => Sharedzon().onshear());
  }
}
