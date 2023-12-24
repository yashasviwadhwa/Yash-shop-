import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DeleteProductController extends GetxController {
  //TODO: Implement DeleteProductController
  late TextEditingController productIDController;
  @override
  void onInit() {
    super.onInit();
    productIDController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    productIDController.dispose();
  }
}
