import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';

class SingleCoupon extends StatelessWidget {
  Color fcolor;
  Color scolor;
  String text;
  String day;
  SingleCoupon({Key? key, required this.fcolor, required this.scolor, required this.day, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91.h,
      width: 374.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: fcolor
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              height: 44.h,
              width: 44.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: scolor
              ),
              child: Center(child: Icon(Icons.confirmation_num_outlined, color: scolor == Colors.black ? Colors.white : Colors.black)),
            ),
            SizedBox(width: 24.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text, style: TextStyle(fontSize: FontConst.kMediumFont+2.sp,fontWeight: FontWeight.w600)),
                Text("$day days reamining", style: TextStyle(fontSize: FontConst.kSmallFont.sp,color: ColorConst.kTextSecondaryColor)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
