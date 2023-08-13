import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/manager_colors.dart';
import '../../../core/resources/manager_font_sizes.dart';
import '../../../core/resources/manager_strings.dart';

class TextFormFieldcustom extends StatelessWidget {
  String tital;

  String hint;
  Widget Iconn;
  bool obscureText;
  TextEditingController? controller;
  String? Function(String?) validator1;

  TextFormFieldcustom(
      {required this.tital,
      required this.hint,
      required this.Iconn,
      required this.obscureText,
      required this.validator1,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    // Translations1 Translationsz1 = Get.put(Translations1());
    // String lang1 = Translationsz1.getlanguage(Get.deviceLocale!.languageCode);
    return TextFormField(
      controller: controller,
      validator: validator1,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hint.tr,
          fillColor: ManagerColors.greenfath,
          filled: true,
          contentPadding: const EdgeInsetsDirectional.symmetric(
              vertical: 16, horizontal: 16),
          label: Text(
            tital.tr,
            style: const TextStyle(
              color: ManagerColors.black,
              fontSize: ManagerFontSizes.s20,
              // fontFamily: Translationsz1.getlang(lang1)
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Iconn,
          disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ManagerColors.green)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ManagerColors.black95))),
    );
  }
}
