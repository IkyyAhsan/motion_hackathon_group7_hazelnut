import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/controllers/login_screen_controller.dart';
import 'package:motion_hackathon_group7_hazelnut/app/modules/login_screen/views/login_screen_view.dart';
import 'package:motion_hackathon_group7_hazelnut/app/utils/constants/colors.dart';

import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  const ProfileScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    automaticallyImplyLeading: false,
    title: const Text('ProfileScreenView'),
    centerTitle: true,
  ),
  );
  }
}
