import 'package:get/get.dart';
import 'package:seeroo_erp/features/bottom_nav/bottom_nav.dart';
import 'package:seeroo_erp/features/food_booking/single_day_booking/single_reservation.dart';
import 'package:seeroo_erp/features/home/home.dart';

class Routes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String bottom = '/bottom';
  static const String singleReservation = '/singleReservation';

  static String getHomeRoute() => home;
  static String getBottomRoute() => bottom;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: bottom, page: () => const BottomSheetPage()),
    GetPage(name: singleReservation, page: () => const SingleReservation())
  ];
}
