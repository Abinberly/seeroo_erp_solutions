class FoodWidget {
  final String item;
  final List dropdown;

  FoodWidget({required this.item, required this.dropdown});
}

class DayWidget {
  final String day;

  DayWidget({required this.day});
}

class WeeklyWidget {
  String day;
  List breakfast, lunch, dinner;

  WeeklyWidget(
      {required this.day,
      required this.breakfast,
      required this.lunch,
      required this.dinner});

  factory WeeklyWidget.fromJSON(Map json) {
    return WeeklyWidget(
        day: json["day"],
        breakfast: json["breakfast"],
        lunch: json["lunch"],
        dinner: json["dinner"]);
  }
}
