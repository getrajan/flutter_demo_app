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
class RegisterEmailChange extends RegisterEvent{
  final String email;

  RegisterEmailChange({this.email});

  @override
  List<Object> get props => [email];
}
class RegisterPasswordChange extends RegisterEvent{
  final String password;

  RegisterPasswordChange({this.password});

  @override
  List<Object> get props => [password];
}