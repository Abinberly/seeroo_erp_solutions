import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/foundation/single_booking_card/single_preview_card.dart';
import 'package:seeroo_erp/theme/colors/colors.dart';
import 'package:seeroo_erp/theme/strings/strings.dart';

class SinglePreview extends StatelessWidget {
  const SinglePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              () => Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text(Strings.food),
      ),
      body: Column(
        children: [
          const Text(Strings.date),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(color: AppColor.whites),
              ],
            ),
            child: const Text('16/01/2024'),
          ),
          SinglePreviewCard()
        ],
      ),
    );
  }
}
