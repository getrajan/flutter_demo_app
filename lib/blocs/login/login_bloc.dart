import 'package:flutter_app_demo/blocs/login/login_event.dart';
import 'package:flutter_app_demo/blocs/login/login_state.dart';
import 'package:flutter_app_demo/repo/user_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepo _userRepo;

  LoginBloc(LoginState initialState, this._userRepo)
      : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield* _mapLoginButtonPressedToState(event.email, event.password);
    }
  }

//Login button Pressed State
  Stream<LoginState> _mapLoginButtonPressedToState(
      String email, String password) async* {
    yield LoginState.loading();
    try {
      await _userRepo.signIn(email, password);
      yield LoginState.success();
    } catch (e) {
      yield LoginState.failure();
    }
  }
}
