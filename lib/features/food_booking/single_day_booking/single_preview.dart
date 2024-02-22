import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/foundation/single_booking_card/single_preview_card.dart';
import 'package:seeroo_erp/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:seeroo_erp/theme/colors/colors.dart';
import 'package:seeroo_erp/theme/strings/strings.dart';

// import '../../../controller/datecontroller.dart';
import '../../bottom_nav/bottom_nav_page.dart';

class SinglePreview extends StatelessWidget {
  SinglePreview({super.key});
  // final ReservationController controller = Get.find<ReservationController>();

// final reservationcontroller = Get.find<ReservationController>();
// reservationcontroller.updateSelectedDate(selectedDate);


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
              child: Text('16/02/2024'),
              // child:  Text(controller.selectedDate != null ? controller.selectedDate!.toString() : 'No date selected'),
            ),
            const SizedBox(height: 12.0),
            const SinglePreviewCard(),
            const SizedBox(height: 12.0),
            Align(
              alignment: Alignment.centerRight,
              child: SPSolidButton(
                  btntext: Strings.submit,
                  onpressed: () {
                    Get.to(() => BottomNavPage());
                  }, btnwidth: MediaQuery.of(context).size.width/3.5,),
            )
          ],
        ),
      ),
    );
  }
}

// final DateController = Get.put(ReservationController()); 
