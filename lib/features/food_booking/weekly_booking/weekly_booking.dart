import 'package:flutter/material.dart';
import 'package:seeroo_erp/routes/routes.dart';
import '../../../foundation/fab/fab.dart';

class WeeklyBooking extends StatefulWidget {
  const WeeklyBooking({super.key});

  @override
  State<WeeklyBooking> createState() => _WeeklyBookingState();
}

class _WeeklyBookingState extends State<WeeklyBooking> {
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
          SizedBox(
            height: 100, 
            child: FABButton(
              navigationLoc: Routes.home, 
            ),
          ),
        ],
      ),
    );
  }
  }