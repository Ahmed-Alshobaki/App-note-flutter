import 'package:get/get.dart';
import 'package:note/core/resources/manager_strings.dart';

validatorr(String val, int min, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(type)) {
      return ManagerStrings.notvalidUsername.tr;
    }
  }
  // if (type == "email") {
  // if (!GetUtils.isEmail(type)) {
  //   return ManagerStrings.notvalidemail.tr;
  //  }
  //}

  if (val.length <= 6) {
    return ManagerStrings.characters6;
  }
  if (val.isEmpty) {
    return ManagerStrings.characters6;
  }
}
