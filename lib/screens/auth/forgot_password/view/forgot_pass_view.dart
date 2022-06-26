import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';
import 'package:secondexam/core/constants/pm_const.dart';
import 'package:secondexam/widgets/app_bar_widget.dart';
import 'package:secondexam/widgets/button_reg_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppBarWidget(text: "Forgot Password"),
          Padding(
            padding: PMConst.kLargePM,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28.h),
                SizedBox(
                  height: 345.75.h,
                  width: 349.w,
                  child: const Image(
                      image: AssetImage("assets/image/forgot_pass.jpg")),
                ),
                SizedBox(height: 70.25.h),
                Text("Enter your phone number",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: FontConst.kLargeFont.sp)),
                SizedBox(height: 16.h),
                Text(
                  "We need to verify you. We will send you a one-time authorization code. ",
                  style: TextStyle(
                      color: ColorConst.kTextSecondaryColor,
                      fontSize: FontConst.kMediumFont.sp),
                ),
                SizedBox(height: 32.h),
                SizedBox(
                  height: 48.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Your Phone Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.r)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 79.h),
                ButtonRegWidget(color: ColorConst.kDarkRedColor, text: "Next", colorsc: ColorConst.kWhiteColor)
              ],
            ),
          )
        ],
      )),
    );
  }
}
