import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/home/views/home_view.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomeView(),
              // ProdukView(),
              // RiwayatView(),
              // ProfileView()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          items: [
            BottomNavigationBarItem(
                activeIcon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset("assets/logos/Home.png")),
                icon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset('assets/logos/homeoutlined.png')),
                label: ''),
            BottomNavigationBarItem(
                activeIcon: SizedBox(
                    width: 24, height: 24, child: Icon(Icons.search_rounded)),
                icon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset('assets/logos/Search.png')),
                label: ''),
            BottomNavigationBarItem(
                activeIcon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset('assets/logos/receiptFilled.png')),
                icon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset('assets/logos/Receipt.png')),
                label: ''),
            BottomNavigationBarItem(
                activeIcon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset('assets/logos/PersonFilled.png')),
                icon: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset('assets/logos/Person.png')),
                label: '')
          ],
        ),
      );
    });
  }
}
