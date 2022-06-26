import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secondexam/screens/auth/sign_in/state/sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(BuildContext context) : super(SignInInitial());
}
