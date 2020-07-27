import 'package:flutter_app_demo/blocs/login/login_event.dart';
import 'package:flutter_app_demo/blocs/login/login_state.dart';
import 'package:flutter_app_demo/repo/user_repo.dart';
import 'package:flutter_app_demo/utils/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepo _userRepo;

  LoginBloc(LoginState initialState, this._userRepo)
      : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield* _mapLoginButtonPressedToState(event.email, event.password);
    }else if(event is LoginEmailChange){
      yield* _mapLoginEmailChanageToState(event.email);
    }else if(event is LoginPasswordChange){
      yield* _mapLoginPasswordChangeToState(event.password);
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
//  Stream for Login Password Changed
Stream<LoginState>_mapLoginPasswordChangeToState(String password) async*{
    yield state.update(isPasswordValid: Validators.isValidPassword(password));
}
//stream for login email changed
Stream<LoginState> _mapLoginEmailChanageToState(String email) async*{
    yield state.update(isEmailValid: Validators.isValidEmail(email));
}
}
