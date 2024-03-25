import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  const ProfileScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfileScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
