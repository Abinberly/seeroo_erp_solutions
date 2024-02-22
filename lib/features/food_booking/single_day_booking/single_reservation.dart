import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/features/food_booking/single_day_booking/single_preview.dart';
import 'package:seeroo_erp/foundation/date_field/date_field.dart';
import 'package:seeroo_erp/foundation/single_booking_card/single_booking_card.dart';
import 'package:seeroo_erp/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:seeroo_erp/theme/strings/strings.dart';

class SingleReservation extends StatefulWidget {
  const SingleReservation({super.key});

  @override
  State<SingleReservation> createState() => _SingleReservationState();
}

class _SingleReservationState extends State<SingleReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
              title: const Text(Strings.food),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DateField(titleDate: Strings.date,),
                const SizedBox(
                  height: 15.0,
                ),
                const SingleBookingCard(),
                const SizedBox(
                  height: 15.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SPSolidButton(
                    btntext: Strings.next,
                    onpressed: () {
                      Get.to(() =>  SinglePreview());
                    }, btnwidth: MediaQuery.of(context).size.width/4,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
