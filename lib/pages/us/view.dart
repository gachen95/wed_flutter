import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wed_flutter/common/values/colors.dart';

import 'controller.dart';

class UsPage extends GetView<UsController> {
  Widget _buildHeader() {
    return Container(
        height: (148 + 68 + 30).h,
        width: 360.w,
        margin: EdgeInsets.only(top: (22.0).h), // 顶部系统栏 44px
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/us/header_bg.png",
              fit: BoxFit.none,
            ),
          ),
          Positioned(
              top: 61.h,
              child: SizedBox(
                width: 313.w,
                height: 177.h,
                child: Card(
                    elevation: 16,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                        // Creates insets from offsets from the left, top, right, and bottom.
                        padding: const EdgeInsets.fromLTRB(5.0, 60.0, 5.0, 10.0), //EdgeInsets.all(15.0),
                        child: Image.asset(
                          "assets/images/us/countdown.png",
                          //fit: BoxFit.none,
                        ))),
              )),
          Positioned(
              top: 33.h,
              left: 190.w,
              child: SizedBox(
                  width: 56.w,
                  height: 56.h,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Color.fromARGB(255, 227, 60, 100),
                    child: CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage('assets/images/us/bride.jpg'),
                    ),
                  ))),
          Positioned(
              top: 25.h,
              left: 127.w,
              child: SizedBox(
                  width: 72.w,
                  height: 72.h,
                  child: CircleAvatar(
                    radius: 36,
                    backgroundColor: Color.fromARGB(255, 35, 90, 152),
                    child: CircleAvatar(
                      radius: 34,
                      backgroundImage: AssetImage('assets/images/us/groom.jpg'),
                    ),
                  ))),
        ]));
  }

  Widget _buildCard() {
    return Container(
        margin: EdgeInsets.only(top: (5.0).h), // 顶部系统栏 44px
        child: SizedBox(
          width: 313.w,
          height: 177.h,
          child: Card(
              elevation: 16,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: IntrinsicHeight(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 138,
                    height: 129,
                    child: Image.asset(
                      "assets/images/us/money.png",
                      //fit: BoxFit.none,
                    ),
                  ),
                  const SizedBox(
                      height: 100,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      )),
                  SizedBox(
                    width: 138,
                    height: 129,
                    child: Image.asset(
                      "assets/images/us/budget.png",
                      //fit: BoxFit.none,
                    ),
                  ),
                ],
              ))),
        ));
  }

  Widget _buildBtnAppt() {
    return Container(
        margin: EdgeInsets.only(top: (15.0).h),
        height: 52,
        color: Color.fromARGB(255, 229, 229, 229),
        child: Row(children: [
          SizedBox(
            width: 78,
          ),
          SizedBox(
            width: 30,
            height: 30,
            child: SvgPicture.asset(
              "assets/images/us/btn_1.svg",
              color: Color.fromARGB(255, 212, 48, 48),
              //width: 32,
            ),
          ),
          SizedBox(
            width: 48,
          ),
          Text(
            '我的预约',
            style: TextStyle(
              color: Color.fromARGB(255, 212, 48, 48),
              fontFamily: "YaHei",
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
            ),
          )
        ]));
  }

  Widget _buildBtnMoney() {
    return Container(
        margin: EdgeInsets.only(top: (10.0).h),
        height: 52,
        color: Color.fromARGB(255, 229, 229, 229),
        child: Row(children: [
          SizedBox(
            width: 78,
          ),
          SizedBox(
            width: 30,
            height: 30,
            child: SvgPicture.asset(
              "assets/images/us/btn_2.svg",
              color: Color.fromARGB(255, 212, 48, 48),
              //width: 32,
            ),
          ),
          SizedBox(
            width: 48,
          ),
          Text(
            '我的信息',
            style: TextStyle(
              color: Color.fromARGB(255, 212, 48, 48),
              fontFamily: "YaHei",
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
            ),
          )
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white,
        body: Center(child: Column(children: <Widget>[_buildHeader(), _buildCard(), _buildBtnAppt(), _buildBtnMoney()])));
  }
}
