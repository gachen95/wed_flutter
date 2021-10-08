import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wed_flutter/common/values/values.dart';
import 'package:wed_flutter/common/widgets/widgets.dart';
import 'package:wed_flutter/routes/app_pages.dart';

import 'controller.dart';

class HomePage extends GetView<HomeController> {
  Widget _buildHeader() {
    return Container(
        height: 32.w,
        width: 360.w,
        margin: EdgeInsets.only(top: (24.0 + 7.0).h), // 顶部系统栏 44px
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 25),
            Image.asset(
              "assets/images/home/location.png",
              width: 20.w,
              height: 20.w,
              //fit: BoxFit.none,
            ),
            const SizedBox(width: 11),
            Text(
              "广州",
              textAlign: TextAlign.left,
              style: TextStyle(
                //color: AppColors.primaryText,
                fontFamily: "YaHei",
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
              ),
            ),
            const SizedBox(width: 20),
            SizedBox(
                height: 32.w,
                width: 186.w,
                // https://stackoverflow.com/questions/50122394/not-able-to-change-textfield-border-color
                child: TextField(
                    style: TextStyle(
                      fontFamily: "YaHei",
                      fontWeight: FontWeight.normal,
                      fontSize: 12.sp,
                    ),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Color.fromARGB(255, 212, 48, 48)),
                      contentPadding: EdgeInsets.fromLTRB(0.0, 0, 0.0, 0),
                      //border: OutlineInputBorder(),
                      hintText: '创意个性定制请柬',
                      fillColor: AppColors.thirdElement,
                      filled: true,
                      hintStyle: TextStyle(color: AppColors.thirdElementText),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(160)),
                        borderSide: BorderSide(color: AppColors.thirdElement, width: 1.0
                            //style: BorderStyle.none,
                            ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(160)),
                        borderSide: BorderSide(color: AppColors.thirdElement),
                      ),
                      // focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.white, width: 32.0), borderRadius: BorderRadius.circular(25.0)),
                    ))),
            //const SizedBox(width: 5),
            Container(
                height: 32.w,
                width: 32.w,
                margin: EdgeInsets.symmetric(horizontal: 15.w),
                child: Stack(alignment: Alignment.center, children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      "assets/images/home/notification.svg",
                      color: AppColors.thirdElementText,
                      width: 32,
                    ),
                    iconSize: 32,
                    color: AppColors.thirdElementText,
                    onPressed: () {
                      //Get.toNamed(Routes.PRINTER + Routes.PRINTER_BARCODE, arguments: pc);
                      //pc.scanBarcodeNormal();
                    },
                  ),
                  Positioned(
                    top: 10.w,
                    left: 12.w,
                    child: SvgPicture.asset(
                      "assets/images/home/dot_red.svg",
                      width: 10,
                    ),
                  ),
                ]))
          ],
        ));
  }

  Widget _buildSwipper() {
    return Container(
        margin: EdgeInsets.only(top: (3.0).h), // 顶部系统栏 44px
        child: CustomSwiper(
          const [
            'assets/images/home/swiper_1.jpg',
            'assets/images/home/swiper_2.jpg',
            'assets/images/home/swiper_3.jpg',
          ],
          //height: G.screenHeight() > 800 ? 288 : 208,
          height: 208,
        ));
  }

  Widget _buildButtonItem(String imageName, String btnText, double marginTop) {
    return Container(
        width: 84.w,
        height: 76.h,
        margin: EdgeInsets.only(top: marginTop.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                "assets/images/home/$imageName.svg",
                width: 38,
              ),
              iconSize: 38,
              onPressed: () {},
            ),
            Text(
              btnText,
              style: TextStyle(
                //color: AppColors.primaryText,
                fontFamily: "YaHei",
                fontWeight: FontWeight.normal,
                fontSize: 9.sp,
              ),
            )
          ],
        ));
  }

  Widget _buildButtonArea() {
    return Container(
        margin: EdgeInsets.only(top: 6.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _buildButtonItem("btn_1", "淘婚品", 0.0),
          _buildButtonItem("btn_2", "找商家", 0.0),
          _buildButtonItem("btn_3", "记账本", 0.0),
          _buildButtonItem("btn_4", "预算", 0.0)
        ]));
  }

  Widget _buildSuggestions() {
    return Container(
        margin: EdgeInsets.only(top: 3.h),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 4,
                ),
                SvgPicture.asset(
                  "assets/images/home/suggestion.svg",
                  width: 26,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '套餐推荐',
                  style: TextStyle(
                    //color: AppColors.primaryText,
                    fontFamily: "YaHei",
                    fontWeight: FontWeight.normal,
                    fontSize: 19.sp,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 168.w,
                    height: 128.h,
                    child: IconButton(
                      icon: Image.asset(
                        "assets/images/home/suggestion_1.jpg",
                      ),
                      //iconSize: 38,
                      onPressed: () {
                        Get.toNamed(AppRoutes.COMBO);
                      },
                    )),
                SizedBox(
                    width: 168.w,
                    height: 128.h,
                    child: IconButton(
                      icon: Image.asset(
                        "assets/images/home/suggestion_2.jpg",
                      ),
                      //iconSize: 38,
                      onPressed: () {
                        Get.toNamed(AppRoutes.COMBO);
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 168.w,
                    height: 128.h,
                    child: IconButton(
                      icon: Image.asset(
                        "assets/images/home/suggestion_3.jpg",
                      ),
                      //iconSize: 38,
                      onPressed: () {
                        Get.toNamed(AppRoutes.COMBO);
                      },
                    )),
                SizedBox(
                    width: 168.w,
                    height: 128.h,
                    child: IconButton(
                      icon: Image.asset(
                        "assets/images/home/suggestion_4.jpg",
                      ),
                      //iconSize: 38,
                      onPressed: () {
                        Get.toNamed(AppRoutes.COMBO);
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 168.w,
                    height: 128.h,
                    child: IconButton(
                      icon: Image.asset(
                        "assets/images/home/suggestion_1.jpg",
                      ),
                      //iconSize: 38,
                      onPressed: () {
                        Get.toNamed(AppRoutes.COMBO);
                      },
                    )),
                SizedBox(
                    width: 168.w,
                    height: 128.h,
                    child: IconButton(
                      icon: Image.asset(
                        "assets/images/home/suggestion_2.jpg",
                      ),
                      //iconSize: 38,
                      onPressed: () {
                        Get.toNamed(AppRoutes.COMBO);
                      },
                    )),
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildHeader(),
          _buildSwipper(),
          _buildButtonArea(),
          _buildSuggestions(),
        ],
      ),
    );
  }
}
