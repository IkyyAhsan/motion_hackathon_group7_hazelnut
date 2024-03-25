import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavbarController());
    return GetBuilder<NavbarController>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 76,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) => controller.selectedIndex.value = index,
            backgroundColor: Colors.white,
            indicatorColor: Colors.white.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(FluentIcons.home_12_regular, size: 18,), label: '', selectedIcon: Icon(FluentIcons.home_12_filled),),
              NavigationDestination(icon: Icon(FluentIcons.search_12_regular), label: '', selectedIcon: Icon(FluentIcons.search_12_filled),),
              NavigationDestination(icon: Icon(FluentIcons.receipt_16_regular), label: '', selectedIcon: Icon(FluentIcons.receipt_20_filled),),
              NavigationDestination(icon: Icon(FluentIcons.person_12_regular), label: '', selectedIcon: Icon(FluentIcons.person_12_filled),)
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
      );
    });
  }
}



        // body: SafeArea(
        //   child: IndexedStack(
        //     index: controller.tabIndex,
        //     children: [
        //       HomeView(),
        //         // const ProductScreenView(),
        //         // const HistoryScreenView(),
        //         // const ProfileScreenView()
        //     ],
        //   ),
        // ),
        // bottomNavigationBar: BottomNavigationBar(
        //   selectedFontSize: 0,
        //   showSelectedLabels: false,
        //   showUnselectedLabels: false,
        //   type: BottomNavigationBarType.fixed,
        //   unselectedItemColor: Colors.grey,
        //   selectedItemColor: Colors.black,
        //   onTap: controller.changeTabIndex,
        //   currentIndex: controller.tabIndex,
        //   items: [
        //     BottomNavigationBarItem(
        //         activeIcon: SizedBox(
        //             width: 24,
        //             height: 24,
        //             child: Image.asset("assets/logos/Home.png")),
        //         icon: SizedBox(
        //             width: 24,
        //             height: 24,
        //             child: Image.asset('assets/logos/homeoutlined.png')),
        //         label: ''),
        //     BottomNavigationBarItem(
        //         activeIcon: const SizedBox(
        //             width: 24, height: 24, child: Icon(Icons.search_rounded)),
        //         icon: SizedBox(
        //             width: 24,
        //             height: 24,
        //             child: Image.asset('assets/logos/Search.png')),
        //         label: ''),
        //     BottomNavigationBarItem(
        //         activeIcon: SizedBox(
        //             width: 24,
        //             height: 24,
        //             child: Image.asset('assets/logos/receiptFilled.png')),
        //         icon: SizedBox(
        //             width: 24,
        //             height: 24,
        //             child: Image.asset('assets/logos/Receipt.png')),
        //         label: ''),
        //     BottomNavigationBarItem(
        //         activeIcon: SizedBox(
        //             width: 24,
        //             height: 24,
        //             child: Image.asset('assets/logos/PersonFilled.png')),
        //         icon: SizedBox(
        //             width: 24,
        //             height: 24,
        //             child: Image.asset('assets/logos/Person.png')),
        //         label: '')
        //   ],
        // ),
