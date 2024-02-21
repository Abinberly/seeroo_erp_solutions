import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../theme/app_text_styles/app_text_styles.dart';
import '../../theme/colors/colors.dart';
import '../../theme/icon_path/icon_path.dart';
import '../../theme/strings/strings.dart';
import 'controller/bottom_nav_controller.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});
  final bottomNavController = Get.put(BottomNavigationController());
  final padding = EdgeInsets.symmetric(
      horizontal: Get.width * 0.008, vertical: Get.height * 0.008);
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Obx(() {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
        child: SizedBox(
          height: Get.height * 0.085,
          width: Get.width * 0.8,
          child: Card(
            elevation: 10,
            color: AppColor.whites,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: GNav(
                color: AppColor.primaryBlue,
                activeColor: AppColor.whites,
                textStyle: AppTextStyles.bodyNormal(),
                tabBackgroundColor: AppColor.primaryBlue,
                tabActiveBorder: Border.all(color: AppColor.primaryBlue),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                tabBorderRadius: 30,
                iconSize: Get.height * 0.02,
                gap: Get.width * 0.01,
                selectedIndex: bottomNavController.tabIndex.value,
                onTabChange: bottomNavController.changeTabIndex,
                tabs: [
                  _buildButton(image: IconPaths.home, text: Strings.home, index: bottomNavController.tabIndex.value),
                  _buildButton(image: IconPaths.project, text: Strings.projects, index: bottomNavController.tabIndex.value),
                  _buildButton(image: IconPaths.time, text: Strings.timeSheet,index: bottomNavController.tabIndex.value),
                  _buildButton(image: IconPaths.dine, text: Strings.food,index: bottomNavController.tabIndex.value),
                  _buildButton(image: IconPaths.menu, text: Strings.menu,index: bottomNavController.tabIndex.value)
                ]),
          ),
        ),
      );
    });
  }

  GButton _buildButton({
     IconData? icon,
    required String image,
    required int index,
    required String text,
  }) {
    return GButton(
      icon:icon?? const IconData(0),
      leading: 
        Image.asset(
          image,
          height: Get.height * 0.03,
          width: Get.width * 0.03,
           color: bottomNavController.tabIndex.value == index ? AppColor.whites : AppColor.greys, 
          ),
      text: text,
      padding: padding,
=======
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
              label: Strings.timesheet),
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
>>>>>>> f17c62394093cbac8a6e85acaf74a30476ef23c2
    );
  }
}
