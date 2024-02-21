import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/foundation/home_quicklook_card/home_quicklook_card.dart';

import '../../foundation/circle_image/circle_image.dart';
import '../profile/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(child: Text('data')),
                    InkWell(
                      child: const CircleImage(assetname: 'assets/images/login1.png', radius: 20),
                      onTap: () {
                        Get.to(() => const ProfilePage());
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 75,
                  child: ListView.separated(
                    itemBuilder: (context, index) => const QuickLook(),
                    separatorBuilder: (context, index) => const SizedBox(width: 10),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
