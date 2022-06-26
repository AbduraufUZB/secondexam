abstract class SignInState {
  SignInState();
}

class SignInInitial extends SignInState {
  SignInInitial();
}

class SignInLoading extends SignInState {
  SignInLoading();
}

class SignInError extends SignInState {
  String msg;
  SignInError(this.msg);
}
