import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';
import 'package:secondexam/widgets/button_reg_widget.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String text =
        "Paprika is a fruit-producing plant that tastes sweet and slightly spicy from the eggplant or Solanaceae tribe. Its green, yellow, red, or purple fru..Read more";
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 64.h,
              width: 414.w,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.chevron_left),
                    Icon(Icons.favorite_outline),
                  ],
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 210.h,
                width: 238.w,
                child: const Image(
                    image: NetworkImage("https://source.unsplash.com/random/1"),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  SizedBox(
                    height: 157.h,
                    width: 414.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Paprika",
                            style: TextStyle(
                                fontSize: FontConst.kExtraLargeFont.sp,
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: 8.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Vegshop",
                                style: TextStyle(
                                    color: ColorConst.kTextSecondaryColor
                                        .withOpacity(0.6),
                                    fontSize: FontConst.kMediumFont.sp)),
                            Row(
                              children: [
                                btnCu("-"),
                                SizedBox(width: 24.w),
                                const Text("1"),
                                SizedBox(width: 24.w),
                                btnCu("+"),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "\$4.99 /Kg",
                          style: TextStyle(
                              fontSize: FontConst.kLargeFont.sp,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    height: 408.h,
                    width: 414.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        Text("Details",
                            style: TextStyle(
                                fontSize: FontConst.kMediumFont.sp,
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 16.h),
                        Text(text,
                            style: TextStyle(
                                color: ColorConst.kTextSecondaryColor,
                                fontSize: FontConst.kMediumFont.sp)),
                        SizedBox(height: 24.h),
                        detailWid(
                            Icons.schedule, "Time Delivery", "25 - 30 Min"),
                        SizedBox(height: 24.h),
                        detailWid(Icons.bookmark_outline, "Category", "Vegetable"),
                        SizedBox(height: 40.h),
                        ButtonRegWidget(color: ColorConst.kDarkRedColor, text: "Add to card", colorsc: Colors.white)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailWid(IconData icon, String text, String txt) {
    return SizedBox(
      height: 48.h,
      width: 185.w,
      child: Row(
        children: [
          btnCub(icon),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,
                  style: TextStyle(
                      fontSize: FontConst.kLargeFont.sp,
                      fontWeight: FontWeight.w500)),
              Text(
                txt,
                style: TextStyle(
                    fontSize: FontConst.kSmallFont.sp,
                    color: ColorConst.kTextSecondaryColor),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget btnCu(String text) {
    return Container(
      height: 40.h,
      width: 40.h,
      decoration: BoxDecoration(
          color: Colors.greenAccent, borderRadius: BorderRadius.circular(10.r)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: ColorConst.kWhiteColor, fontSize: FontConst.kLargeFont.sp),
      )),
    );
  }

  Widget btnCub(IconData icon) {
    return Container(
      height: 48.h,
      width: 48.h,
      decoration: BoxDecoration(
          color: ColorConst.kTextSecondaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10.r)),
      child: Center(
          child: Icon(
        icon,
        size: 20,
      )),
    );
  }
}
