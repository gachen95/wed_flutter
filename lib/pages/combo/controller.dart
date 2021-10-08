import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wed_flutter/routes/app_pages.dart';

class ComboController extends GetxController {
  List<double> cellCount = [2, 2, 4, 2, 2];
  List<Widget> shoeImages = [];

  @override
  void onInit() async {
    super.onInit();

    shoeImages.add(Image.asset('assets/images/combo/shoe_1.png', height: 85));
    shoeImages.add(Image.asset('assets/images/combo/shoe_2.png', height: 85));
    shoeImages.add(Image.asset('assets/images/combo/shoe_3.png', height: 85));
    shoeImages.add(Image.asset('assets/images/combo/shoe_4.png', height: 85));
  }

  @override
  void onReady() async {
    super.onReady();
  }
}
