import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';
import 'package:secondexam/core/constants/pm_const.dart';
import 'package:secondexam/widgets/app_bar_widget.dart';
import 'package:secondexam/widgets/button_reg_widget.dart';

class ResetPassView extends StatelessWidget {
  const ResetPassView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppBarWidget(text: "Reset Password"),
          Padding(
            padding: PMConst.kLargePM,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28.h),
                Text(
                  "Please fill in the field below to reset your current password.",
                  style: TextStyle(
                      color: ColorConst.kTextSecondaryColor,
                      fontSize: FontConst.kMediumFont.sp),
                ),
                SizedBox(height: 48.h),
                textSet("New Password"),
                SizedBox(height: 10.h),
                formSet("New Password"),
                SizedBox(height: 16.h),
                textSet("New Password Confirmation"),
                SizedBox(height: 10.h),
                formSet("New Password Confirmation"),
                SizedBox(height: 48.h),
                ButtonRegWidget(color: ColorConst.kDarkRedColor, text: "Reset Password", colorsc: ColorConst.kWhiteColor)
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget textSet(String text) {
    return Text(text,
        style: TextStyle(
            color: ColorConst.kTextSecondaryColor,
            fontSize: FontConst.kMediumFont.sp));
  }
  Widget formSet(String text) {
    return SizedBox(
      height: 48.h,
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.visibility),
            hintText: text,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(100.r))),
      ),
    );
  }
}
