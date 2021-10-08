import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CustomSwiper extends StatelessWidget {
  final List<String> images;
  final int index;
  final double height;

  /// 轮播图
  /// ```
  /// @param {List<String>} images - 轮播图地址
  /// @param {int} index - 初始下标位置
  /// @param {double} height - 容器高度
  /// ```
  CustomSwiper(this.images, {this.index = 0, this.height = 288});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Swiper(
          index: index,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          itemCount: images.length,
          pagination:
              //const SwiperPagination(builder: DotSwiperPaginationBuilder(size: 8, activeSize: 8), alignment: Alignment.bottomRight),
              const SwiperPagination(builder: DotSwiperPaginationBuilder(size: 8, activeSize: 8)),
          autoplay: true,
          duration: 500,
          autoplayDelay: 5000),
    );
  }
}
