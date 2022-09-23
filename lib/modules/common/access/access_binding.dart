import 'package:foodle_app/modules/common/access/access_controller.dart';
import 'package:get/instance_manager.dart';

class AccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccessController());
  }
}
