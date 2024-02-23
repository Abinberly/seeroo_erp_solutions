import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/colors.dart';
class AppTextStyles {
  static TextStyle heading() {
    return GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      fontSize: Get.width*0.08,
      color: AppColor.blackColor,
    );
  }
   static TextStyle bodyNormal() {
    return GoogleFonts.poppins(
      fontWeight: FontWeight.normal,
      fontSize: Get.height*0.018,
      color: AppColor.whites,
    );
  }

}
