import 'package:flutter/material.dart';
import 'package:seeroo_erp/theme/colors/colors.dart';

import '../../class/food_widget.dart';

class WeeklyBookingCard extends StatefulWidget {
  @override
  _WeeklyBookingCardState createState() => _WeeklyBookingCardState();
}

class _WeeklyBookingCardState extends State<WeeklyBookingCard> {
  Map<String, List<String>> dailyItems = {
    'Monday': ['Item 1', 'Item 2', 'Item 3'],
    'Tuesday': ['Item 4', 'Item 5', 'Item 6'],
    'Wednesday': ['Item 7', 'Item 8', 'Item 9'],
    'Thursday': ['Item 10', 'Item 11', 'Item 12'],
    'Friday': ['Item 13', 'Item 14', 'Item 15'],
    'Saturday': ['Item 16', 'Item 17', 'Item 18'],
    'Sunday': ['Item 19', 'Item 20', 'Item 21'],
  };

  Map<String, String?> selectedItems = {};

  @override
  Widget build(BuildContext context) {
return Material(
  child: GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // Number of columns in the grid
      mainAxisSpacing: 10.0, // Spacing between rows
      crossAxisSpacing: 10.0, // Spacing between columns
      childAspectRatio: 1.0, // Aspect ratio of each grid item
    ),
    itemCount: dailyItems.length,
    itemBuilder: (context, index) {
      String day = dailyItems.keys.elementAt(index);
      return Card( // You can use Card to wrap each grid item
        child: ExpansionTile(
          title: Text(day),
          children: _buildItemList(day),
        ),
      );
    },
  ),
);
 

  }

  List<Widget> _buildItemList(String day) {
    return dailyItems[day]!.map((item) {
      return ListTile(
        title: Text(item),
        trailing: DropdownButton<String>(
          value: selectedItems[day],
          onChanged: (String? newValue) {
            setState(() {
              selectedItems[day] = newValue;
            });
          },
          items: dailyItems[day]!.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      );
    }).toList();
  }
}

