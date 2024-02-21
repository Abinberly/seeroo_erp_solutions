import 'package:flutter/material.dart';
import 'package:seeroo_erp/class/food_widget.dart';

class WeeklyBookingCard extends StatelessWidget {
  const WeeklyBookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    List foodlist = []; //list of names, you can generate it using JSON as well
    foodlist.add(WeeklyWidget(
        day: "Day", breakfast: "Breakkast", lunch: "Lunch", dinner: "Dinner"));
    foodlist.add(WeeklyWidget(
        day: "Monday",
        breakfast: "Idli/Sambar",
        lunch: "Address 1",
        dinner: "Phone 1"));
    foodlist.add(WeeklyWidget(
        day: "Tuesday",
        breakfast: "Idli/Sambar",
        lunch: "Address 1",
        dinner: "Phone 1"));
    foodlist.add(WeeklyWidget(
        day: "Wednesday",
        breakfast: "Idli/Sambar",
        lunch: "Address 1",
        dinner: "Phone 1"));
    foodlist.add(WeeklyWidget(
        day: "Thursday",
        breakfast: "Idli/Sambar",
        lunch: "Address 1",
        dinner: "Phone 1"));
    foodlist.add(WeeklyWidget(
        day: "Friday",
        breakfast: "Idli/Sambar",
        lunch: "Address 1",
        dinner: "Phone 1"));
    return Card(
      child: Table(
        border: TableBorder.all(width: 1, color: Colors.black45),
        children: foodlist.map((WeeklyWidget) {
          return TableRow(//return table row in every loop
              children: [
            //table cells inside table row
            TableCell(
                child: Padding(
                    padding: EdgeInsets.all(5), child: Text(WeeklyWidget.day))),
            TableCell(
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(WeeklyWidget.breakfast))),
            TableCell(
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(WeeklyWidget.lunch))),
            TableCell(
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(WeeklyWidget.dinner))),
          ]);
        }).toList(),
      ),
    );
  }
}
