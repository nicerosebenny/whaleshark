import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whaleshark/data/model/loginmodel.dart';
import 'package:whaleshark/data/model/registermodel.dart';
import 'package:whaleshark/reprositries/reprositries.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginBloc() : super(LoginInitial()) {
    on<VerifyPassword>(verifyPassword);
  }

  Future<FutureOr<void>> verifyPassword(
      VerifyPassword event, Emitter<LoginStates> emit) async {
    LoginModel loginModel;
    emit(Loading());

    Map map = {

      "phone": event,
      "password": event.password,
    

    };
    loginModel =
        (await Repository().checkPhoneNumber(url: "/login", data: map)) as LoginModel;

    if (loginModel.status == true) {
      emit(LoginSuccess());
    } else {
      emit(LoginError(error: loginModel.msg));
    }
    if (event.username == "abc" && event.password == "123") {
       emit(LoginSuccess());
     } else {
       emit(LoginError(error: "Invalid credentials"));
     }
  }
}

class LoginEvents {}

class VerifyPassword extends LoginEvents {
  final String? username, password;

  VerifyPassword({this.username, this.password});
}

class LoginStates {}

class LoginInitial extends LoginStates {}

class Loading extends LoginStates {}

class LoginSuccess extends LoginStates {}

class LoginError extends LoginStates {
  final String? error;

  LoginError({this.error});
}
