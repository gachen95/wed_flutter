import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SplashPage extends GetView<SplashController> {
  Widget _buildPageMiddle() {
    return Container(
      margin: EdgeInsets.only(top: (168).h),
      child: Image.asset(
        "assets/images/splash/splash_1.png",
        fit: BoxFit.none,
      ),
    );
  }

  Widget _buildPageMiddle2() {
    return Image.asset(
      "assets/images/splash/splash_2.png",
      fit: BoxFit.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white,
        body: Center(child: Column(children: <Widget>[_buildPageMiddle(), _buildPageMiddle2()])));
  }
}
