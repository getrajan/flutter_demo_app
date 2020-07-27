import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable{
  @override
  List<Object> get props => [];
}
class LoginButtonPressed extends LoginEvent{
  final String email;
  final String password;

  LoginButtonPressed({this.email, this.password});
  @override
  List<Object> get props => [email,password];
}
class LoginEmailChange extends LoginEvent{
  final String email;

  LoginEmailChange({this.email});

  @override
  List<Object> get props => [email];
}
class LoginPasswordChange extends LoginEvent{
  final String password;

  LoginPasswordChange({this.password});

  @override
  List<Object> get props => [password];
}