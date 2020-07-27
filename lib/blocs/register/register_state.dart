class RegisterState {
  final bool isEmailValid;
  final bool isPasswordValid;
  final bool isSubmit;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid => isEmailValid && isPasswordValid;

  RegisterState(
      {this.isEmailValid,
      this.isPasswordValid,
      this.isSubmit,
      this.isSuccess,
      this.isFailure});

  factory RegisterState.initial() {
    return RegisterState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: false,
        isFailure: false,
        isSuccess: false);
  }

  factory RegisterState.loading() {
    return RegisterState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: true,
        isFailure: false,
        isSuccess: false);
  }

  factory RegisterState.success() {
    return RegisterState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: false,
        isFailure: true,
        isSuccess: false);
  }

  factory RegisterState.failure() {
    return RegisterState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: false,
        isFailure: false,
        isSuccess: true);
  }
}
