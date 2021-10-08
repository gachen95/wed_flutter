import 'package:get/get.dart';

import 'controller.dart';

class UsBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<UsController>(() => UsController());
    Get.put<UsController>(UsController());
  }
}
