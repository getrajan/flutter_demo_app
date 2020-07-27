class RegisterState {
  final bool isEmailValid;
  final bool isPasswordValid;
  final bool isSubmit;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid => isEmailValid && isPasswordValid;

  RegisterState({this.isEmailValid,
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

  RegisterState update({bool isEmailvalid,
    bool isPasswordValid,}) {
    return copyWith(
        isEmailValid: isEmailvalid,
        isPasswordValid: isPasswordValid,
        isSubmit: false,
        isSuccss: false,
        isFailure: false
    );
  }

  RegisterState copyWith(
      {bool isEmailValid, bool isPasswordValid, bool isSubmit,
        bool isSuccss, bool isFailure}) {
    return RegisterState(
        isEmailValid: isEmailValid ?? this.isEmailValid,
        isPasswordValid: isPasswordValid ?? this.isPasswordValid,
        isSubmit: isSubmit ?? this.isSubmit,
        isSuccess: isSuccss ?? this.isSuccess,
        isFailure: isFailure ?? this.isFailure);
  }
}
