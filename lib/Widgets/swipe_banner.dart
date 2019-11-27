import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwipeBanner extends StatelessWidget {
  final List<Map> mBanner;

  SwipeBanner(this.mBanner);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
        itemCount: mBanner.length,
        itemBuilder: (context, index) {
          return Image.network(
            "${mBanner[index]["images"]}",
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        pagination: SwiperPagination(),
      ),
    );
  }
}
