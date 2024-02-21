import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/foundation/single_booking_card/single_preview_card.dart';
import 'package:seeroo_erp/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:seeroo_erp/theme/colors/colors.dart';
import 'package:seeroo_erp/theme/strings/strings.dart';

import '../../bottom_nav/bottom_nav_page.dart';

class SinglePreview extends StatelessWidget {
  const SinglePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(Strings.food),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Strings.date,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all( color: AppColor.primaryBlue),
                boxShadow: const [
                  BoxShadow(color: AppColor.whites),
                ],
              ),
              child: const Text('16/01/2024'),
            ),
            const SizedBox(height: 12.0),
            const SinglePreviewCard(),
            const SizedBox(height: 12.0),
            SPSolidButton(
                btntext: Strings.submit,
                onpressed: () {
                  Get.to(() => BottomNavPage());
                })
          ],
        ),
      ),
    );
  }
}
