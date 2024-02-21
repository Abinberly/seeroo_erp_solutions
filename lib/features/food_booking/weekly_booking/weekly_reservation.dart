import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/features/food_booking/single_day_booking/single_preview.dart';
import 'package:seeroo_erp/foundation/date_field/date_field.dart';
import 'package:seeroo_erp/foundation/single_booking_card/single_booking_card.dart';
import 'package:seeroo_erp/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:seeroo_erp/theme/strings/strings.dart';

class WeeklyReservation extends StatefulWidget {
  const WeeklyReservation({super.key});

  @override
  State<WeeklyReservation> createState() => _WeeklyReservationState();
}

class _WeeklyReservationState extends State<WeeklyReservation> {
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
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: const Column(
                        children: [
                          Text('From'),
                          DateField(),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      child: const Column(
                        children: [
                          Text('To'),
                          DateField(),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const SingleBookingCard(),
                const SizedBox(
                  height: 15.0,
                ),
                SPSolidButton(
                  btntext: Strings.next,
                  onpressed: () {
                    Get.to(() => const SinglePreview());
                  },
                )
              ],
            ),
          ),
        ));
  }
}
