import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';
import 'package:secondexam/core/constants/pm_const.dart';
import 'package:secondexam/screens/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:secondexam/screens/auth/sign_up/state/sign_up_state.dart';
import 'package:secondexam/widgets/app_bar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/widgets/button_reg_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => SignUpCubit(context),
      child: Scaffold(
          body: BlocConsumer<SignUpCubit, SignUpState>(
              builder: (context, state) {
                if (state is SignUpInitial) {
                  return SafeArea(
                    child: Column(
                      children: [
                        AppBarWidget(text: "New Registration"),
                        SizedBox(
                          height: 779.h,
                          width: 414.w,
                          child: Padding(
                            padding: PMConst.kLargePM,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20.h),
                                Text(
                                  "It looks like you don’t have an account on this number. Please let us know some information for a secure service.",
                                  style: TextStyle(
                                      color: ColorConst.kTextSecondaryColor,
                                      fontSize: FontConst.kMediumFont.sp),
                                ),
                                SizedBox(height: 48.h),
                                textSet("Full name"),
                                SizedBox(height: 10.h),
                                SizedBox(
                                  height: 48.h,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Full Name",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.r))),
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                textSet("Password"),
                                SizedBox(height: 10.h),
                                formSet("Password"),
                                SizedBox(height: 16.h),
                                textSet("Password Confirmation"),
                                SizedBox(height: 10.h),
                                formSet("Password Confirmation"),
                                SizedBox(height: 25.h),
                                Row(
                                  children: [
                                    Checkbox(value: false, onChanged: (v) {}),
                                    SizedBox(width: 12.w),
                                    Text("I accept the ",
                                        style: TextStyle(
                                            fontSize:
                                                FontConst.kMediumFont.sp)),
                                    Text("Terms of Use",
                                        style: TextStyle(
                                            fontSize: FontConst.kMediumFont.sp,
                                            color: ColorConst.kGreenColor)),
                                    Text(" and ",
                                        style: TextStyle(
                                            fontSize:
                                                FontConst.kMediumFont.sp)),
                                    Text("Privacy Policy",
                                        style: TextStyle(
                                            fontSize: FontConst.kMediumFont.sp,
                                            color: ColorConst.kGreenColor)),
                                  ],
                                ),
                                SizedBox(height: 49.h),
                                ButtonRegWidget(
                                    color: ColorConst.kDarkRedColor,
                                    text: "Sign Up",
                                    colorsc: ColorConst.kWhiteColor),
                                SizedBox(height: 24.h),
                                Center(
                                    child: Text("or use",
                                        style: TextStyle(
                                            color:
                                                ColorConst.kTextSecondaryColor,
                                            fontSize:
                                                FontConst.kMediumFont.sp))),
                                SizedBox(height: 24.h),
                                ButtonRegWidget(
                                    color: ColorConst.kWhiteColor,
                                    text: "Sign Up with Google",
                                    colorsc: ColorConst.kBlackColor),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                } else if (state is SignUpError) {
                  return Center(
                    child: Text(
                      state.msg,
                      style: TextStyle(
                          color: ColorConst.kRedColor,
                          fontSize: FontConst.kLargeFont.sp),
                    ),
                  );
                } else if (state is SignUpLoading) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else {
                  return Center(
                    child: Text(
                      "ELSEDA",
                      style: TextStyle(
                          color: ColorConst.kRedColor,
                          fontSize: FontConst.kLargeFont.sp),
                    ),
                  );
                }
              },
              listener: (context, state) {})),
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
