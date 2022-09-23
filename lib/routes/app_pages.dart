import 'package:foodle_app/modules/common/access/access_binding.dart';
import 'package:foodle_app/modules/common/access/access_page.dart';
import 'package:foodle_app/modules/common/login/login_binding.dart';
import 'package:foodle_app/modules/common/login/login_page.dart';
import 'package:foodle_app/routes/app_routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.ACCESS,
        page: () => const AccessPage(),
        binding: AccessBinding()),
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => const LoginPage(),
        binding: LoginBinding()),
  ];
}
