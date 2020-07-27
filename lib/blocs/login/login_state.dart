import 'package:flutter/foundation.dart';

class LoginState {
  final bool isEmailValid;
  final bool isPasswordValid;
  final bool isSubmit;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid => isEmailValid && isPasswordValid;

  LoginState({this.isEmailValid,
    this.isPasswordValid,
    this.isSubmit,
    this.isSuccess,
    this.isFailure});

  factory LoginState.initial(){
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: false,
        isFailure: false,
        isSuccess: false
    );
  }factory LoginState.loading(){
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: true,
        isFailure: false,
        isSuccess: false
    );
  }factory LoginState.success(){
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: false,
        isFailure: true,
        isSuccess: false
    );
  }

  factory LoginState.failure() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: false,
        isFailure: false,
        isSuccess: true);
  }
}
