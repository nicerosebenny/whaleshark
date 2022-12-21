import 'dart:async';
import 'package:whaleshark/data/model/registermodel.dart';
import 'package:whaleshark/reprositries/reprositries.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBloc extends Bloc<SignupEvents, SignupStates> {
  SignupBloc() : super(LoginInitial()) {
    on<GetSignupEvent>(_getSignupEvent);
  }

  Future<FutureOr<void>> _getSignupEvent(
      GetSignupEvent event, Emitter<SignupStates> emit) async {
    SignupModel signupmodel;
    emit(Loading());

    Map map = {
      "role": "",
      "name": event.name,
      "phone":event.phone,
       "address":"",
        "password":event.password,
        "email":event.email,

    };
    signupmodel =
        (await Repository().signup2(url: "/user/registration", data: map));

    if (signupmodel.status == true) {
      emit(SignupSuccess());
    } else {
      emit(SignupError(error: signupmodel.msg));
    }
    //  if (event.role == "housekeeper" && event.phone == "7308518671" && event.password=="123") {
    //    emit(SignupSuccess());
    //  } else {
    //    emit(SignupError(error: "Invalid credentials"));
    //  }
  }
}

class SignupEvents {}

class GetSignupEvent extends SignupEvents {
  final String? role, phone,password,name,email;

  GetSignupEvent({this.role, this.phone, this.password,this.email,this.name});
}

class SignupStates {}

class LoginInitial extends SignupStates {}

class Loading extends SignupStates {}

class SignupSuccess extends SignupStates {}

class SignupError extends SignupStates {
  final String? error;

  SignupError({this.error});
}
