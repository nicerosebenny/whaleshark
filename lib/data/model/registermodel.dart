class SignupModel {
  bool? status;
  bool? otpver;
  String? token;
  String? role;
  String? msg;

  SignupModel({this.status, this.otpver, this.token, this.role, this.msg});

  SignupModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    otpver = json['otpver'];
    token = json['token'];
    role = json['role'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['otpver'] = otpver;
    data['token'] = token;
    data['role'] = role;
    data['msg'] = msg;
    return data;
  }
}

class GenerateOtpModel {
  bool? status;
  String? otp;
  bool? userexists;
  String? msg;

  GenerateOtpModel({this.status, this.otp, this.userexists, this.msg});

  GenerateOtpModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    otp = json['otp'];
    userexists = json['userexists'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['otp'] = otp;
    data['userexists'] = userexists;
    data['msg'] = msg;
    return data;
  }
}
