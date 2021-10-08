import 'package:get/get.dart';

import 'controller.dart';

class ComboBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<ComboController>(() => ComboController());
    Get.put<ComboController>(ComboController());
  }
}
