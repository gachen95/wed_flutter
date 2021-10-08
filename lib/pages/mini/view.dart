import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wed_flutter/common/values/colors.dart';
import 'package:wed_flutter/routes/app_pages.dart';

import 'controller.dart';

class MiniPage extends GetView<MiniController> {
  Widget _buildHeader() {
    return Container(
        height: 32.w,
        width: 360.w,
        margin: EdgeInsets.only(top: (24.0 + 7.0).h), // 顶部系统栏 44px
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 25),
            SizedBox(
                height: 32.w,
                width: 210.w,
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
                      hintText: '快速搜索你的联系人',
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
            const SizedBox(width: 25),
            Image.asset(
              "assets/images/mini/h1.png",
              width: 32.w,
              height: 32.w,
              //fit: BoxFit.none,
            ),
            const SizedBox(width: 15),
            Image.asset(
              "assets/images/mini/h2.png",
              width: 32.w,
              height: 32.w,
              //fit: BoxFit.none,
            ),
          ],
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
              icon: Image.asset(
                "assets/images/mini/$imageName.png",
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

  Widget _buildButtonArea1() {
    return Container(
        margin: EdgeInsets.only(top: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _buildButtonItem("b1", "婚纱礼服", 0.0),
          _buildButtonItem("b2", "婚房布置", 0.0),
          _buildButtonItem("b3", "婚鞋箱包", 0.0),
          _buildButtonItem("b4", "胸花头饰", 0.0)
        ]));
  }

  Widget _buildButtonArea2() {
    return Container(
        margin: EdgeInsets.only(top: 0.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _buildButtonItem("b5", "婚纱礼服", 0.0),
          _buildButtonItem("b6", "婚房布置", 0.0),
          _buildButtonItem("b7", "婚鞋箱包", 0.0),
          _buildButtonItem("b8", "胸花头饰", 0.0)
        ]));
  }

  Widget _buildAdArea() {
    return Container(
        margin: EdgeInsets.only(top: 0.h),
        //width: 360,
        height: 160,
        child: Image.asset(
          "assets/images/mini/ad.jpg",
          //fit: BoxFit.none,
        ));
  }

  Widget _buildSuggestions() {
    return Container(
        margin: EdgeInsets.only(top: 3.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 168.w,
                    height: 128.h,
                    child: IconButton(
                      icon: Image.asset(
                        "assets/images/mini/s1.png",
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
                        "assets/images/mini/s2.png",
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
                        "assets/images/mini/s3.png",
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
                        "assets/images/mini/s1.png",
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
                        "assets/images/mini/s2.png",
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
                        "assets/images/mini/s3.png",
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
        child:
            Column(children: <Widget>[_buildHeader(), _buildButtonArea1(), _buildButtonArea2(), _buildAdArea(), _buildSuggestions()]));
  }
}
