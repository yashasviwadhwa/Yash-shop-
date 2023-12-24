import 'package:get/get.dart';

import '../controllers/delete_product_controller.dart';

class DeleteProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeleteProductController>(
      () => DeleteProductController(),
    );
  }
}
