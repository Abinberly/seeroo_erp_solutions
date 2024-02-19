import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/theme/colors/colors.dart';

import '../../class/food_widget.dart';

class SingleBookingCard extends StatefulWidget {
  SingleBookingCard({super.key});

  @override
  State<SingleBookingCard> createState() => _SingleBookingCardState();
}

class _SingleBookingCardState extends State<SingleBookingCard> {
  String _selectedval = "";

  List<FoodWidget> food = [
    FoodWidget(item: 'Breakfast', dropdown: ['Idili/Sambar', '--NA-']),
    FoodWidget(item: 'Lunch', dropdown: ['Meals/Fish', '--NA-']),
    FoodWidget(item: 'Dinner', dropdown: ['Chappathi/Egg Curry', '--NA-']),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.whites,
      child: Card(
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 1, crossAxisSpacing: 1, crossAxisCount: 3),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Flexible(
                      child: Column(
                    children: [
                      Text(food[index].item, overflow: TextOverflow.ellipsis,),
                      Flexible(
                        child: DropdownButton<String>(
                          items: food[index]
                              .dropdown
                              .map((item) => DropdownMenuItem<String>(
                                    value: item as String, 
                                    child: Text(item),
                                  ))
                              .toList(),
                          onChanged: (String? newValue) {},
                        ),
                      ),
                    ],
                  )));
            }),
      ),
    );
  }
}
