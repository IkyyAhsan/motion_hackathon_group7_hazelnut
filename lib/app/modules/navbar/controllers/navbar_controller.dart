import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/history_screen/views/history_screen_view.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/home/views/home_view.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/product_screen/views/product_screen_view.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/profile_screen/views/profile_screen_view.dart';

class NavbarController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [HomeView(), const ProductScreenView(), const HistoryScreenView(), const ProfileScreenView()];
}
