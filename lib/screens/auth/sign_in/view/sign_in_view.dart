import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secondexam/core/constants/color_const.dart';
import 'package:secondexam/core/constants/font_const.dart';
import 'package:secondexam/core/constants/pm_const.dart';
import 'package:secondexam/core/constants/radius_const.dart';
import 'package:secondexam/screens/auth/sign_in/cubit/sign_in_cubit.dart';
import 'package:secondexam/screens/auth/sign_in/state/sign_in_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:secondexam/widgets/button_reg_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<SignInCubit, SignInState>(
          builder: (context, state) {
            if (state is SignInInitial) {
              return SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 426.h,
                      width: 414.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 318.11.h,
                            width: 349.w,
                            child: const Image(
                                image:
                                    AssetImage("assets/image/sign_in_img.jpg")),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 340.h,
                      width: 414.w,
                      child: Padding(
                        padding: PMConst.kMediumPM,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome",
                                style: TextStyle(
                                    fontSize: FontConst.kLargeFont.sp)),
                            SizedBox(height: 16.h),
                            Text(
                                "Welcome to Organico Mobile Apps. Please fill in the field below to sign in.",
                                style: TextStyle(
                                    fontSize: FontConst.kMediumFont.sp)),
                            SizedBox(height: 32.h),
                            Center(
                              child: Container(
                                height: 48.h,
                                width: 374.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black.withOpacity(0.3)
                                  ),
                                  borderRadius: const BorderRadius.all(RadiusConst.kExtraLargeRadius)
                                ),
                                child: Row(
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Center(
                              child: Container(
                                height: 48.h,
                                width: 374.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black.withOpacity(0.3)
                                  ),
                                  borderRadius: const BorderRadius.all(RadiusConst.kExtraLargeRadius)
                                ),
                                child: Row(
                                ),
                              ),
                            ),
                            SizedBox(height: 24.h),
                            Container(alignment: Alignment.topRight,child: TextButton(onPressed: (){}, child: Text("Forgot Password?", style: TextStyle(color: ColorConst.kGreenColor, fontWeight: FontWeight.bold, fontSize: FontConst.kMediumFont.sp),)))
                          ],
                        ),
                      ),
                    ),
                    Center(child: ButtonRegWidget(color: ColorConst.kDarkRedColor, text: "Sign In", colorsc: Colors.white))
                  ],
                ),
              );
            } else {
              return const Center(
                child: Text("ELSEDAA"),
              );
            }
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}
