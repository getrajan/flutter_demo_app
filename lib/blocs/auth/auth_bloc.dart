import 'package:flutter_app_demo/blocs/auth/auth_event.dart';
import 'package:flutter_app_demo/blocs/auth/auth_state.dart';
import 'package:flutter_app_demo/repo/user_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthSate> {
  final UserRepo _userRepo;

  AuthBloc({UserRepo userRepo})
      : _userRepo = userRepo,
        super(AuthInitial());

  @override
  Stream<AuthSate> mapEventToState(AuthEvent event) async* {
    if (event is AuthInitial) {
      yield* _mapAuthStartedToState();
    } else if (event is AuthLoggedIn) {
      yield* _mapAuthLoggedInToState();
    } else if (event is AuthLoggedOut) {
      yield* _mapAuthLoggedOutInToState();
    }
  }

//Authentication LoggedOut
  Stream<AuthSate> _mapAuthLoggedOutInToState() async* {
    yield AuthFailure();
    _userRepo.signOut();
  }

//Authentication LoggedIn
Stream<AuthSate> _mapAuthLoggedInToState() async*{
    yield AuthSuccess(await _userRepo.getUser());
}
//Authentication Started
Stream<AuthSate> _mapAuthStartedToState() async*{
final isSignIn = await _userRepo.isSignIn();
if(isSignIn){
final firebaseUser = await _userRepo.getUser();
yield AuthSuccess(firebaseUser);
}else{
  yield AuthFailure();
}
}
}