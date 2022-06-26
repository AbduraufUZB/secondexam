import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/font_const.dart';

class AppBarWidget extends StatelessWidget {
  String text;
  AppBarWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      width: 414.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 35.w),
          const Icon(Icons.chevron_left),
          SizedBox(width: 33.w),
          Text(text, style: TextStyle(fontSize: FontConst.kLargeFont.sp))
        ],
      ),
    );
  }
}
