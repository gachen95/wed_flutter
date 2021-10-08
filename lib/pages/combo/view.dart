import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:wed_flutter/common/values/values.dart';
import 'package:wed_flutter/routes/app_pages.dart';

import 'controller.dart';

class ComboPage extends GetView<ComboController> {
  Widget _buildPageHeader() {
    return Container(
      width: 360.w,
      margin: EdgeInsets.only(top: 22.0.h),
      child: Image.asset(
        "assets/images/home/swiper_3.jpg",
        //fit: BoxFit.none,
      ),
    );
  }

  Widget _buildComboDetail() {
    return Container(
        width: 360.w,
        margin: EdgeInsets.only(top: 20.0.h),
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            const SizedBox(
              width: 16,
            ),
            Text(
              '套餐：陪你走过花开花落',
              style: TextStyle(
                color: AppColors.comboTitleText,
                fontFamily: "YaHei",
                fontWeight: FontWeight.normal,
                fontSize: 15.sp,
              ),
            ),
            const SizedBox(
              width: 46,
            ),
            ElevatedButton(
              //style: style,
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.white, // foreground
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
              ),
              onPressed: () {},
              child: Text(
                '自定义套餐',
                style: TextStyle(
                  fontFamily: "YaHei",
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp,
                ),
              ),
            ),
          ]),
          const SizedBox(
            width: 320,
            child: Text(
              "婚纱照：\n复古*10张 花海*20张 放大*1张\n礼服：\n一字肩深V拖地长尾+蓝色格子西装*1\n伴郎伴娘礼服 *12\n龙凤褂 *1\n婚车：白色丰田5102  *8\n婚宴酒店：白天鹅 18桌\n婚鞋：高跟5cm*2 平跟鞋*1 水晶高跟 *8 皮鞋 *9\n婚床：KINGSIZE大红喜庆4件套",
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 320,
            child: Text(
              "礼服：",
            ),
          ),
          SizedBox(
              width: 340,
              height: 250,
              child: StaggeredGridView.countBuilder(
                primary: true,
                shrinkWrap: false,
                crossAxisCount: 6,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) => Container(
                  child: Image.asset(
                    "assets/images/combo/dress_${index + 1}.png",
                    //fit: BoxFit.none,
                  ),
                ),
                staggeredTileBuilder: (int index) => StaggeredTile.count(2, controller.cellCount[index]),
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
              )),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 320,
            child: Text(
              "婚鞋：",
            ),
          ),
          SizedBox(
              width: 340,
              height: 100,
              child: CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(3.0),
                    sliver: SliverGrid.count(
                        mainAxisSpacing: 1, //horizontal space
                        crossAxisSpacing: 1, //vertical space
                        crossAxisCount: 4, //number of images for a row
                        children: controller.shoeImages),
                  ),
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            //style: style,
            style: ElevatedButton.styleFrom(
              primary: AppColors.bigButton, // background
              onPrimary: Colors.white, // foreground
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
              fixedSize: const Size(255, 46),
            ),
            onPressed: () {
              Get.offAndToNamed(AppRoutes.CUSTOMIZATION + AppRoutes.APPOINTMENT);
            },
            child: Text(
              '预约该套餐',
              style: TextStyle(
                fontFamily: "YaHei",
                fontWeight: FontWeight.normal,
                fontSize: 13.sp,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      _buildPageHeader(),
      _buildComboDetail(),
    ])));
  }
}
