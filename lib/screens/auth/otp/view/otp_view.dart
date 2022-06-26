import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';
import 'package:secondexam/core/constants/pm_const.dart';
import 'package:secondexam/widgets/app_bar_widget.dart';
import 'package:secondexam/widgets/button_reg_widget.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBarWidget(text: "OTAC Number"),
            Padding(
              padding: PMConst.kLargePM,
              child: Column(
                children: [
                  SizedBox(height: 28.h),
                  Text(
                    'Enter Authorization Code',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: FontConst.kLargeFont.sp),
                  ),
                  SizedBox(height: 16.h),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'We have sent SMS to:',
                          style: TextStyle(
                              color: ColorConst.kTextSecondaryColor,
                              fontSize: FontConst.kMediumFont.sp),
                        ),
                        Text(
                          '+998(93)XXX-XX-XX',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: FontConst.kLargeFont.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    height: 48.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "6 Digit code",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.r)
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Container(
                    alignment: Alignment.bottomRight,
                      child: Text(
                    'Resend Code',
                    style: TextStyle(color: ColorConst.kGreenColor, fontSize: FontConst.kMediumFont.sp),
                    textAlign: TextAlign.right,
                  )),
                  SizedBox(height: 40.h),
                  ButtonRegWidget(color: ColorConst.kDarkRedColor, text: "Next", colorsc: ColorConst.kWhiteColor)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
