import 'package:flutter/material.dart';
import 'package:seeroo_erp/features/food_booking/monthly_booking/monthly_booking.dart';
import 'package:seeroo_erp/features/food_booking/single_day_booking/single_day_booking.dart';
import 'package:seeroo_erp/features/food_booking/weekly_booking/weekly_booking.dart';
import 'package:seeroo_erp/features/home/home.dart';

class FoodBooking extends StatefulWidget {
  const FoodBooking({super.key});

  @override
  State<FoodBooking> createState() => _FoodBookingState();
}

class _FoodBookingState extends State<FoodBooking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Food Booking'),
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Single Day Booking',
              ),
              Tab(
                text: 'Weeekly Booking',
              ),
              Tab(
                text: 'Monthly Booking',
              )
            ],
          ),
        ),
        body: const TabBarView(
            children: [SingleDayBooking(), WeeklyBooking(), MonthlyBooking()]),
      ),
    );
  }
}
