import 'package:flutter_app_demo/blocs/register/register_event.dart';
import 'package:flutter_app_demo/blocs/register/register_state.dart';
import 'package:flutter_app_demo/repo/user_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final UserRepo _userRepo;

  RegisterBloc(RegisterState initialState, this._userRepo)
      : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async*{
    if(event is RegisterButtonPressed){

    }
  }

//  Stream for Register Button Clicked Event
Stream<RegisterState> _mapRegisterButtonPressedToStream(String email,String password) async*{
    yield RegisterState.loading();
try{
await _userRepo.signUp(email, password);
yield RegisterState.success();
}catch(e){
  yield RegisterState.failure();
}
}
}
