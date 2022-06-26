import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';
import 'package:secondexam/core/constants/pm_const.dart';

class OrganicCardWidget extends StatelessWidget {
  String name;
  String image;
  String price;
  String txt;
  Color color;
  OrganicCardWidget(
      {Key? key,
      required this.name,
      required this.image,
      required this.price,
      required this.txt,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 234.h,
      width: 176.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
              width: 50.h,
              child: Image(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 9.h),
            Text(name, style: TextStyle(fontSize: FontConst.kMediumFont.sp)),
            SizedBox(height: 2.h),
            Text(name,
                style: TextStyle(
                    fontSize: FontConst.kSmallFont.sp,
                    color: ColorConst.kTextSecondaryColor)),
            SizedBox(height: 13.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$price/Kg",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: FontConst.kMediumFont.sp)),
                Container(
                  height: 36.h,
                  width: 36.h,
                  decoration: BoxDecoration(
                    color: ColorConst.kGreenColor,
                    borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: const Center(
                    child: Icon(Icons.add, color: ColorConst.kWhiteColor,),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
