import 'package:get/get.dart';

class ReservationController extends GetxController {
  DateTime selectedDate = DateTime.now();

  void updateSelectedDate(DateTime newDate) {
    selectedDate = newDate;
    update(); 
  }
}
