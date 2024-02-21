import 'package:get/get.dart';
import 'package:seeroo_erp/features/bottom_nav/bottom_nav.dart';
import 'package:seeroo_erp/features/food_booking/single_day_booking/single_reservation.dart';
import 'package:seeroo_erp/features/food_booking/weekly_booking/weekly_reservation.dart';
import 'package:seeroo_erp/features/home/home.dart';
import 'package:seeroo_erp/features/loginpage/login_page.dart';

import '../features/bottom_nav/bottom_nav_page.dart';

class Routes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String bottom = '/bottom';
  static const String singleReservation = '/singleReservation';
  static const String weeklyReservation = '/weeklyReservation';
      static const String login = '/login';


  static String getHomeRoute() => home;
  static String getBottomRoute() => bottom;
  static String getSingleRoute() => singleReservation;
  static String getWeeklyRoute() => weeklyReservation;
  static String getLoginRoute() => login;

  
  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: bottom, page: () =>  BottomNavPage()),
    GetPage(name: singleReservation, page: () => const SingleReservation()),
    GetPage(name: weeklyReservation, page: () => const WeeklyReservation()),
    GetPage(name: login, page: () => LoginPage())
  ];
}
