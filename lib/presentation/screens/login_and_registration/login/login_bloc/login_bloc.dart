import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:oggetto/repository/firebase_auth/signInWithFirebase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<EmailEvent>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
    on<PasswordEvent>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<SendClickedEnterEvent>((event, emit) async {
      if(state.email != null && state.password != null){
        try{
          await SignWithFirebaseAuth().signInWithEmail(state.email!, state.password!);
          log('оке');
        }catch(e){
          emit(state.copyWith(error: NotLoginError(error: e.toString())));
          log("SignInBloc: $e");
        }
      }
    });
  }
}
