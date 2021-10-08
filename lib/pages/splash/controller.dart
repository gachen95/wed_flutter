import 'package:get/get.dart';
import 'package:wed_flutter/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();

    await Future.delayed(const Duration(milliseconds: 2000));

    Get.offAndToNamed(AppRoutes.Application);
  }
}
