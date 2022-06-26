import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';

class VegetableItemWidget extends StatelessWidget {
  int i;
  VegetableItemWidget({Key? key, required this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      height: 134.h,
      width: 123.w,
      decoration: BoxDecoration(
          color: ColorConst.kGreenColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
              width: 70.w,
              child: Image(
                image: NetworkImage("https://source.unsplash.com/random/$i"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              "index: $i",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: FontConst.kMediumFont.sp),
            )
          ],
        ),
      ),
    );
  }
}
