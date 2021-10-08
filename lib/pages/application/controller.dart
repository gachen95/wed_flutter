import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wed_flutter/common/utils/iconfont.dart';
import 'package:wed_flutter/common/values/values.dart';

class ApplicationController extends GetxController {
  ApplicationController();

  // 当前 tab 页码
  final _page = 0.obs;
  set page(value) => _page.value = value;
  get page => _page.value;

  // tab 页标题
  late final List<String> tabTitles;

  // 页控制器
  late final PageController pageController;

  // 底部导航项目
  late final List<BottomNavigationBarItem> bottomTabs;

  /// 事件

  // tab栏动画
  void handleNavBarTap(int index) {
    pageController.animateToPage(index, duration: const Duration(milliseconds: 200), curve: Curves.ease);
  }

  // tab栏页码切换
  void handlePageChanged(int page) {
    this.page = page;
  }

  /// 生命周期

  @override
  void onInit() {
    super.onInit();

    // 准备一些静态数据
    tabTitles = ['首页', '微婚礼', '个性定制', '我们'];
    bottomTabs = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(
          Iconfont.btm_home,
          color: AppColors.tabBarElement,
        ),
        activeIcon: Icon(
          Iconfont.btm_home,
          color: AppColors.tabBarElementActive,
        ),
        label: '首页',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Iconfont.btm_wed,
          color: AppColors.tabBarElement,
        ),
        activeIcon: Icon(
          Iconfont.btm_wed,
          color: AppColors.tabBarElementActive,
        ),
        label: '微婚礼',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Iconfont.btm_customization,
          color: AppColors.tabBarElement,
        ),
        activeIcon: Icon(
          Iconfont.btm_customization,
          color: AppColors.tabBarElementActive,
        ),
        label: '个性定制',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Iconfont.btm_us,
          color: AppColors.tabBarElement,
        ),
        activeIcon: Icon(
          Iconfont.btm_us,
          color: AppColors.tabBarElementActive,
        ),
        label: '我们',
        backgroundColor: AppColors.primaryBackground,
      ),
    ];

    pageController = PageController(initialPage: page);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
