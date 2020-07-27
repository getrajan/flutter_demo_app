import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthSate extends Equatable {
  AuthSate();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthSate {}

class AuthSuccess extends AuthSate {
  final FirebaseUser firebaseUser;

  AuthSuccess(this.firebaseUser);

  @override
  List<Object> get props => [];
}
class AuthFailure extends AuthSate{}
