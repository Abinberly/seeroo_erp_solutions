import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/features/profile/leave/my_leave_request/views/my_leave_request.dart';

import '../../theme/colors/colors.dart';

class ProfileButtonCard extends StatelessWidget {
  const ProfileButtonCard({super.key, /*required this.text*/});

  // final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.whites,
      child: Card(
        child: InkWell(
          onTap: () {Get.to(MyLeaveRequestPage());},
          child: Container(
            padding: const EdgeInsets.only(left: 15, right: 10),
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'text',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColor.greys),
                ),
                Icon(Icons.navigate_next)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
