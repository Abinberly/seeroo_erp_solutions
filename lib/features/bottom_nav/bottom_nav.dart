import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/colors/colors.dart';
import '../../theme/strings/strings.dart';
import '../food_booking/food_booking.dart';
import '../project/project.dart';
import '../time_sheet/time_sheet.dart';

import '../../foundation/sp_icon/sp_icon.dart';
import '../home/home.dart';

class BottomSheetPage extends StatefulWidget {
  const BottomSheetPage({super.key});

  @override
  State<BottomSheetPage> createState() => _BottomSheetPageState();
}

class _BottomSheetPageState extends State<BottomSheetPage> {
  int currentState = 0;

  final _pages = [HomePage(), ProjectPage(), TimeSheet(),FoodBooking()];

  get currentIndex => currentState;

  var landingPageController = Get.put(());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentState],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        
        currentIndex: currentState,
        onTap: (newIndex) {
          setState(() {
            currentState = newIndex;
          });
        },
        unselectedItemColor: AppColor.greys,
        selectedItemColor: AppColor.primaryBlue,
        items: [
          BottomNavigationBarItem(
              icon: SPIcon(
                  assetname: 'home_icon.png',
                  isSelected: 0 == currentIndex),
              label: Strings.home),
          BottomNavigationBarItem(
              icon: SPIcon(
                  assetname: 'project_icon.png', isSelected: 1 == currentIndex),
              label: Strings.projects),
          BottomNavigationBarItem(
              icon:
                  SPIcon(assetname: 'time_icon.png', isSelected: 2 == currentIndex),
              label: Strings.timestamp),
              BottomNavigationBarItem(
              icon:
                  SPIcon(assetname: 'dine_icon.png', isSelected: 3 == currentIndex),
              label: Strings.food),
              // BottomNavigationBarItem(
              // icon:
              //     SPIcon(assetname: 'menu_icon.png', isSelected: 4 == currentIndex),
              // label: Strings.menu)
        ],
      ),
    );
  }
}
