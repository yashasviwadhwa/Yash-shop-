import 'package:get/get.dart';
import '../modules/add-product/bindings/add_product_binding.dart';
import '../modules/add-product/views/add_product_view.dart';
import '../modules/delete-product/bindings/delete_product_binding.dart';
import '../modules/delete-product/views/delete_product_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/update-product/bindings/update_product_binding.dart';
import '../modules/update-product/views/update_product_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCT,
      page: () => const AddProductView(),
      binding: AddProductBinding(),
    ),
    GetPage(
      name: _Paths.DELETE_PRODUCT,
      page: () => const DeleteProductView(),
      binding: DeleteProductBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_PRODUCT,
      page: () => const UpdateProductView(),
      binding: UpdateProductBinding(),
    ),
  ];
}
