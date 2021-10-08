import 'package:get/get.dart';

import 'controller.dart';

class MiniBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<MiniController>(() => MiniController());
    Get.put<MiniController>(MiniController());
  }
}
