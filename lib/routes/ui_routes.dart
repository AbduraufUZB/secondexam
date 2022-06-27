import 'package:flutter/material.dart';
import 'package:secondexam/screens/auth/forgot_password/view/forgot_pass_view.dart';
import 'package:secondexam/screens/auth/otp/view/otp_view.dart';
import 'package:secondexam/screens/auth/reset_pass/view/reset_pass_view.dart';
import 'package:secondexam/screens/auth/sign_in/view/sign_in_view.dart';
import 'package:secondexam/screens/auth/sign_up/view/sign_up_view.dart';
import 'package:secondexam/screens/splash/view/splash_view.dart';
import 'package:secondexam/screens/tabbar/explore/view/explore_view.dart';
import 'package:secondexam/screens/tabbar/home/category/view/category_view.dart';
import 'package:secondexam/screens/tabbar/home/coupon/view/coupon_view.dart';
import 'package:secondexam/screens/tabbar/home/home_screen/view/home_view.dart';

class UIRoutes {
  static final UIRoutes _instance = UIRoutes._init();
  static UIRoutes get instance => _instance;
  UIRoutes._init();
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case "/splash":
        return MaterialPageRoute(builder: (ctx) => const SplashView());
      case "/sign_in":
        return MaterialPageRoute(builder: (ctx) => const SignInView());
      case "/sign_up":
        return MaterialPageRoute(builder: (ctx) => const SignUpView());
      case "/otp":
        return MaterialPageRoute(builder: (ctx) => const OtpView());
      case "/reset_pass":
        return MaterialPageRoute(builder: (ctx) => const ResetPassView());
      case "/forgot_pass":
        return MaterialPageRoute(builder: (ctx) => const ForgotPassword());
      case "/explore":
        return MaterialPageRoute(builder: (ctx) => ExploreView());
      case "/home":
        return MaterialPageRoute(builder: (ctx) => const HomeView());
      case "/category":
        return MaterialPageRoute(builder: (ctx) => CategoryView());
      case "/coupon":
        return MaterialPageRoute(builder: (ctx) => const Couponview());
    }
  }
}
