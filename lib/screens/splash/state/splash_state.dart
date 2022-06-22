import 'package:flutter/material.dart';

abstract class SplashState {}

class SplashComplete extends SplashState {
  nextPage(BuildContext context) =>
      Navigator.pushNamedAndRemoveUntil(context, '/sign_in', (route) => false);
}

class SplashInitial extends SplashState {
  SplashInitial();
}

class SplashLoading extends SplashState {
  SplashLoading();
}

class SplashError extends SplashState {
  String msg;
  SplashError(this.msg);
}
