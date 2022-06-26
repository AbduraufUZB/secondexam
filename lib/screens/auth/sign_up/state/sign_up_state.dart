abstract class SignUpState {}

class SignUpInitial extends SignUpState {
  SignUpInitial();
}

class SignUpLoading extends SignUpState {
  SignUpLoading();
}

class SignUpError extends SignUpState {
  String msg;
  SignUpError(this.msg);
}
