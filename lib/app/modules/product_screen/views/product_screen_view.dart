import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_screen_controller.dart';

class ProductScreenView extends GetView<ProductScreenController> {
  const ProductScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductScreenView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProductScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
