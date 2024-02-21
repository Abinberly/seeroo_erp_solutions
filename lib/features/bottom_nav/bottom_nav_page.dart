import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/features/bottom_nav/bottom_nav.dart';
import 'package:seeroo_erp/features/food_booking/food_booking.dart';
import 'package:seeroo_erp/features/home/home.dart';
import 'package:seeroo_erp/features/project/project.dart';
import 'package:seeroo_erp/features/time_sheet/time_sheet.dart';

import 'controller/bottom_nav_controller.dart';

class BottomNavPage extends StatelessWidget {
   BottomNavPage({super.key});
  final bottomNavController = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          return IndexedStack(
            index:bottomNavController.tabIndex.value,
            children: [  HomePage(),
             ProjectPage(), TimeSheet(), FoodBooking()
            ],
          );
        }
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}