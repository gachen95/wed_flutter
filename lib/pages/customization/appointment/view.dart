import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wed_flutter/common/values/colors.dart';

import 'controller.dart';

class ApptPage extends GetView<ApptController> {
  Widget _buildSelectCombo() {
    return Container(
      margin: EdgeInsets.only(top: (17).h, left: 20, right: 10),
      width: 360,
      child: Obx(() => DropdownButtonFormField(
            value: controller.selectedcombo.value.isNotEmpty ? controller.selectedcombo.value : null,
            elevation: 5,
            style: TextStyle(fontSize: 15, color: Color(0xFF0000FF)),
            //isDense: true, // Reduces the dropdowns height by +/- 50%
            isExpanded: true,

            items: controller.comboList.map<DropdownMenuItem<String>>((data) {
              return DropdownMenuItem(
                value: data,
                child: Text(data),
              );
            }).toList(),
            onChanged: (String? value) {
              controller.selectedcombo.value = value ?? '';
            },
            hint: Text(
              "确认选择套餐",
              style: TextStyle(
                fontFamily: "YaHei",
                fontWeight: FontWeight.normal,
                fontSize: 15.sp,
              ),
            ),
          )),
    );
  }

  Widget _buildSelectDate(BuildContext context) {
    return Obx(() => ListTile(
          title: Text(
            "日期           " + controller.selectedDate.value,
            style: TextStyle(
              fontFamily: "YaHei",
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
            ),
          ),
          onTap: () => {
            DatePicker.showDateTimePicker(context, showTitleActions: true, onChanged: (date) {
              print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
            }, onConfirm: (date) {
              print('confirm $date');
              controller.selectedDate.value = date.toString();
            }, currentTime: new DateTime.now())
          },
          trailing: new Icon(Icons.chevron_right),
        ));
  }

  Widget _buildStore() {
    return Container(
        width: 360,
        margin: EdgeInsets.only(top: (20).h, left: 20, right: 20),
        child: Row(children: <Widget>[
          SizedBox(
            width: 65,
            height: 65,
            child: Image.asset(
              "assets/images/appt/store_1.png",
            ),
          ),
          SizedBox(
            width: 28,
          ),
          SizedBox(
              width: 199,
              height: 72,
              child: Image.asset(
                "assets/images/appt/store_2.png",
              )),
        ]));
  }

  Widget _buildSelectStores(BuildContext context) {
    return Container(
        width: 360,
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            const SizedBox(
              width: 4,
            ),
            SvgPicture.asset(
              "assets/images/appt/location.svg",
              width: 18,
            ),
            Text(
              '选择最近门店',
              style: TextStyle(
                //color: AppColors.primaryText,
                fontFamily: "YaHei",
                fontWeight: FontWeight.normal,
                fontSize: 15.sp,
              ),
            ),
            Text(
              '（联盟商家中任意一间都可以满足该套餐的需求哦）',
              style: TextStyle(
                color: AppColors.thirdElementText,
                fontFamily: "YaHei",
                fontWeight: FontWeight.normal,
                fontSize: 9.sp,
              ),
            ),
          ]),
          _buildStore(),
          _buildStore(),
          _buildStore(),
          _buildStore()
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: AppColors.AppBar,
          centerTitle: true,
          title: Text(
            '预约订单',
            style: TextStyle(
              //color: AppColors.primaryText,
              fontFamily: "YaHei",
              fontWeight: FontWeight.normal,
              fontSize: 24.sp,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          _buildSelectCombo(),
          SizedBox(
            height: 10,
          ),
          _buildSelectDate(context),
          //Spacer(),
          SizedBox(
            height: 10,
          ),
          _buildSelectStores(context),
          //Spacer(),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            //style: style,
            style: ElevatedButton.styleFrom(
              primary: AppColors.bigButton, // background
              onPrimary: Colors.white, // foreground
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
              fixedSize: const Size(255, 46),
            ),
            onPressed: () {},
            child: Text(
              '预约该套餐',
              style: TextStyle(
                fontFamily: "YaHei",
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
              ),
            ),
          )
        ])));
  }
}
