import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secondexam/screens/auth/sign_up/state/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(BuildContext context) : super(SignUpInitial());
}
