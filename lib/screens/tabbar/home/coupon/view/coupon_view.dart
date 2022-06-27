import 'package:flutter/material.dart';
import 'package:secondexam/mock/organic_mock.dart';
import 'package:secondexam/widgets/app_bar_widget.dart';
import 'package:secondexam/widgets/single_coupon_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Couponview extends StatelessWidget {
  const Couponview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppBarWidget(text: "Your Coupon"),
          SizedBox(
            height: 779.h,
            child: ListView.builder(
              itemCount: OrganicMock.coupon.length,
              itemBuilder: (ctx, i) {
                Map m = OrganicMock.coupon[i];
                return Padding(
                  padding: EdgeInsets.all(20.h),
                  child: SingleCoupon(
                      fcolor: m["day"] == "0"
                          ? Colors.black.withOpacity(0.1)
                          : Colors.red.withOpacity(0.3),
                      scolor: m["day"] == "0" ? Colors.black : Colors.white,
                      day: m["day"],
                      text: m["name"]),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
