import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/history_screen_controller.dart';

class HistoryScreenView extends GetView<HistoryScreenController> {
  const HistoryScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HistoryScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HistoryScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
