import 'package:get/get.dart';

import 'controller.dart';

class ApptBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut<ApptController>(() => ApptController());
    Get.put<ApptController>(ApptController());
  }
}
