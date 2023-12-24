import 'package:get/get.dart';
import 'package:yash_shop/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onTapSignIn() {
    Get.offAndToNamed(Routes.ADD_PRODUCT);
  }
}
