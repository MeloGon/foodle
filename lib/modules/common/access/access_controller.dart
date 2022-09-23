import 'package:flutter/material.dart';
import 'package:foodle_app/routes/app_routes.dart';
import 'package:get/get.dart';

class AccessController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animationMove;
  String? _tagline, _urlFoto;
  bool _loading = false;
  bool get loading => _loading;
  String? get tagLine => _tagline;
  String? get urlFoto => _urlFoto;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    );
    animationMove = Tween<double>(begin: 350, end: -200)
        .animate(animationController)
      ..addListener(() => update());
    animationController.repeat(reverse: true);

    showResources();
    super.onInit();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  showResources() async {
    _loading = true;
  }

  void goToRegisterPage() async {
    //Get.toNamed(AppRoutes.REGISTERMODE);
  }

  void goToLoginPage() async {
    Get.toNamed(AppRoutes.LOGIN);
  }
}
