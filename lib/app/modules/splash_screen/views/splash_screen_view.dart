import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:yash_shop/app/data/utils/app_color.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashScreenView'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor.backgroundColor1, AppColor.backgroundColor2],
            begin: Alignment.topCenter,
            end: Alignment.center,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Obx(
            () => Image.asset(
              controller.image.value,
              width: Get.width * 0.4,
              height: Get.width * 0.4,
            ),
          ),
        ),
      ),
    );
  }
}
