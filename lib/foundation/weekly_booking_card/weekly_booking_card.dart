import 'package:flutter/material.dart';
import 'package:seeroo_erp/class/food_widget.dart';

class WeeklyBookingCard extends StatelessWidget {
  const WeeklyBookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    // List<WeeklyTitle> weeklyTitle = [];
    // foodlist.add(WeeklyWidget(
    //     day: "Day",
    //     breakfast: ['Breakkast'],
    //     lunch: ["Lunch"],
    //     dinner: ["Dinner"]));

    List<WeeklyWidget> foodlist = [];
    //  foodlist.add(WeeklyWidget(
    //     day: "Day",
    //     breakfast: ['Breakkast'],
    //     lunch: ["Lunch"],
    //     dinner: ["Dinner"]));
    foodlist.add(WeeklyWidget(
        day: "Monday",
        breakfast: ['Breakkast'],
        lunch: ["Lunch"],
        dinner: ["Dinner"]));
    foodlist.add(WeeklyWidget(
        day: "Tuesday",
        breakfast: ['Breakkast'],
        lunch: ["Lunch"],
        dinner: ["Dinner"]));
    foodlist.add(WeeklyWidget(
        day: "Wednesday",
        breakfast: ['Breakkast'],
        lunch: ["Lunch"],
        dinner: ["Dinner"]));
    foodlist.add(WeeklyWidget(
        day: "Thursday",
        breakfast: ['Breakkast'],
        lunch: ["Lunch"],
        dinner: ["Dinner"]));
    foodlist.add(WeeklyWidget(
        day: "Friday",
        breakfast: ['Breakkast'],
        lunch: ["Lunch"],
        dinner: ["Dinner"]));
    return Card(
      child: Table(
        border:
            TableBorder.all(width: 0, color: const Color.fromARGB(0, 0, 0, 0)),
        children: foodlist.map((WeeklyWidget) {
          return TableRow(children: [
            // TableRow(children: Text('Day'), Text('Breakfast'), Text('Lunch'),Text('Dinner')),
            // TableCell(
            //     child: Padding(
            //         padding: EdgeInsets.all(5), child: Row(children: [Text('Day'), Text('Breakfast'), Text('Lunch'),Text('Dinner')],))),
            TableCell(
                child: Padding(
                    padding: EdgeInsets.all(5), child: Text(WeeklyWidget.day))),
            TableCell(
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: DropdownButton<String>(
                      items: WeeklyWidget.breakfast
                          .map((item) => DropdownMenuItem<String>(
                                value: item as String,
                                child: Text(item),
                              ))
                          .toList(),
                      onChanged: (String? newValue) {},
                    ))),
            TableCell(
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: DropdownButton<String>(
                      items: WeeklyWidget.lunch
                          .map((item) => DropdownMenuItem<String>(
                                value: item as String,
                                child: Text(item),
                              ))
                          .toList(),
                      onChanged: (String? newValue) {},
                    ))),
            TableCell(
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: DropdownButton<String>(
                      items: WeeklyWidget.dinner
                          .map((item) => DropdownMenuItem<String>(
                                value: item as String,
                                child: Text(item),
                              ))
                          .toList(),
                      onChanged: (String? newValue) {},
                    ))),
          ]);
        }).toList(),
      ),
    );
  }
}
