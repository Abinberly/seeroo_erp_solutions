import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/features/bottom_nav/bottom_nav_page.dart';
import 'package:seeroo_erp/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:seeroo_erp/foundation/weekly_booking_card/weekly_preview_card.dart';
import '../../../theme/strings/strings.dart';

class WeeklyPreview extends StatefulWidget {
  const WeeklyPreview({super.key});

  @override
  State<WeeklyPreview> createState() => _WeeklyPreviewState();
}

class _WeeklyPreviewState extends State<WeeklyPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () => Get.back()),
          title: const Text(Strings.food),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const WeeklyPreviewCard(),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                    child: SPSolidButton(
                  btntext: 'Submit',
                  onpressed: () => Get.to(BottomNavPage()),
                  btnwidth: MediaQuery.of(context).size.width / 4,
                ))
              ],
            ),
          ),
        ));
  }
}
