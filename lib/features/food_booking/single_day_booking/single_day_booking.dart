import 'package:flutter/material.dart';
import 'package:seeroo_erp/foundation/fab/fab.dart';
import 'package:seeroo_erp/routes/routes.dart';

class SingleDayBooking extends StatefulWidget {
  const SingleDayBooking({Key? key});

  @override
  State<SingleDayBooking> createState() => _SingleDayBookingState();
}

class _SingleDayBookingState extends State<SingleDayBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Image.asset('assets/images/no_data.jpeg'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 100,
            child: FABButton(
              navigationLoc: Routes.singleReservation,
            ),
          ),
        ],
      ),
    );
  }
}
