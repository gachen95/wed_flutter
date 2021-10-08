import 'package:get/get.dart';
import 'package:wed_flutter/routes/app_pages.dart';

class ApptController extends GetxController {
  List<String> comboList = ['套餐一：蜜汁有你', '套餐二：纷纷浪漫', '套餐三：有你有我'];
  RxString selectedcombo = ''.obs;
  RxString selectedDate = ''.obs;

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }
}
