import 'dart:async';

import 'package:get/get.dart';
import 'package:yash_shop/app/data/utils/app_image.dart';
import 'package:yash_shop/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  RxString image = ''.obs;

  @override
  void onInit() {
    image.value = AppImage.logo;
    super.onInit();
  }

  void isLoginCheck() {
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Get.offAndToNamed(
        Routes.LOGIN,
      );
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
