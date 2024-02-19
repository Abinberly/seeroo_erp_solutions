import 'package:flutter/material.dart';

import '../../../foundation/fab/fab.dart';
import '../../../routes/routes.dart';

class MonthlyBooking extends StatefulWidget {
  const MonthlyBooking({super.key});

  @override
  State<MonthlyBooking> createState() => _MonthlyBookingState();
}

class _MonthlyBookingState extends State<MonthlyBooking> {
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
              navigationLoc: Routes.home, 
            ),
          ),
        ],
      ),
    );

  }
}