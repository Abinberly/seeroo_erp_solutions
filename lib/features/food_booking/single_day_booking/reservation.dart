import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/foundation/date_field/date_field.dart';
import 'package:seeroo_erp/foundation/single_booking_card/single_booking_card.dart';
import 'package:seeroo_erp/foundation/sp_solid_button/sp_solid_button.dart';

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
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DateField(),
                SizedBox(height: 15.0,),
                SingleBookingCard(),
                SizedBox(height: 15.0,),
                SPSolidButton(btntext: 'Next')
              ],
            ),
          ),
        ));
  }
}
