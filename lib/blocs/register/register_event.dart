import 'package:equatable/equatable.dart';
import 'package:flutter_app_demo/repo/user_repo.dart';

abstract class RegisterEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class RegisterButtonPressed extends RegisterEvent {
  final String email;
  final String password;

  RegisterButtonPressed({this.email, this.password});

  @override
  List<Object> get props => [email, password];
}
