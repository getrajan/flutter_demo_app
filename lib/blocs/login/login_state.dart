import 'package:flutter/foundation.dart';

class LoginState {
  final bool isEmailValid;
  final bool isPasswordValid;
  final bool isSubmit;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid => isEmailValid && isPasswordValid;

  LoginState(
      {this.isEmailValid,
      this.isPasswordValid,
      this.isSubmit,
      this.isSuccess,
      this.isFailure});

  factory LoginState.initial() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: false,
        isFailure: false,
        isSuccess: false);
  }

  factory LoginState.loading() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: true,
        isFailure: false,
        isSuccess: false);
  }

  factory LoginState.success() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: false,
        isFailure: true,
        isSuccess: false);
  }

  factory LoginState.failure() {
    return LoginState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmit: false,
        isFailure: false,
        isSuccess: true);
  }

  LoginState update({
    bool isEmailValid,
    bool isPasswordValid,
  }) {
    return copyWith(
        isEmailValid: isEmailValid,
        isPasswordValid: isPasswordValid,
        isSubmit: false,
        isSuccess: false,
        isFailure: false);
  }

  LoginState copyWith({
    bool isEmailValid,
    bool isPasswordValid,
    bool isSubmit,
    bool isSuccess,
    bool isFailure,
  }) {
    return LoginState(
        isEmailValid: isEmailValid ?? this.isEmailValid,
        isPasswordValid: isPasswordValid ?? this.isPasswordValid,
        isSubmit: isSubmit ?? this.isSubmit,
        isSuccess: isSuccess ?? this.isSuccess,
        isFailure: isFailure ?? this.isFailure);
  }
}
