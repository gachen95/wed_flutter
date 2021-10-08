import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wed_flutter/common/values/values.dart';
import 'package:wed_flutter/pages/home/view.dart';
import 'package:wed_flutter/pages/mini/view.dart';
import 'package:wed_flutter/pages/us/view.dart';

import 'controller.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({Key? key}) : super(key: key);

  // 内容页
  Widget _buildPageView() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        HomePage(),
        MiniPage(),
        Text('个性定制'),
        UsPage(),
      ],
      controller: controller.pageController,
      onPageChanged: controller.handlePageChanged,
    );
  }

  // 底部导航
  Widget _buildBottomNavigationBar() {
    return Obx(() => BottomNavigationBar(
          items: controller.bottomTabs,
          currentIndex: controller.page,
          // fixedColor: AppColors.primaryElement,
          type: BottomNavigationBarType.fixed,
          onTap: controller.handleNavBarTap,
          selectedLabelStyle: TextStyle(
            fontFamily: "YaHei",
            fontWeight: FontWeight.normal,
            fontSize: 13.sp,
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: "YaHei",
            fontWeight: FontWeight.normal,
            fontSize: 13.sp,
          ),

          selectedItemColor: AppColors.tabBarElementActive,
          //unselectedItemColor: Colors.white,
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageView(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
