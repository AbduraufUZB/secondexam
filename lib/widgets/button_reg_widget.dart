import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/font_const.dart';
class ButtonRegWidget extends StatelessWidget {
  Color color;
  String text;
  Color colorsc;
  ButtonRegWidget({Key? key, required this.color, required this.text, required this.colorsc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: 374.w,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: colorsc),
        borderRadius: BorderRadius.circular(100.r)
      ),
      child: Center(child: Text(text, style: TextStyle(color: colorsc, fontSize: FontConst.kMediumFont.sp),),),
    );
  }
}
