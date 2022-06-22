import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secondexam/screens/splash/cubit/splash_cubit.dart';
import 'package:secondexam/screens/splash/state/splash_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {},
          builder: (context, state) => Center(
            child: SizedBox(
              width: 143.w,
              height: 203.h,
              child: Image.asset('assets/image/splash_page_img.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
