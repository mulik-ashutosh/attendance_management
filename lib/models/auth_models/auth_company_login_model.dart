import 'dart:convert';
/// code : 400
/// message : "Employee not found!"
/// stack : "Error: Employee not found!\n    at Object.loginEmployeeWithEmail (/home/ubuntu/apps/attendance-system-api/src/services/auth.service.js:17:11)\n    at runMicrotasks (<anonymous>)\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)\n    at async /home/ubuntu/apps/attendance-system-api/src/controllers/auth.controller.js:13:20"

AuthCompanyLoginModel authCompanyLoginModelFromJson(String str) => AuthCompanyLoginModel.fromJson(json.decode(str));
String authCompanyLoginModelToJson(AuthCompanyLoginModel data) => json.encode(data.toJson());
class AuthCompanyLoginModel {
  AuthCompanyLoginModel({
      num? code, 
      String? message, 
      String? stack,}){
    _code = code;
    _message = message;
    _stack = stack;
}

  AuthCompanyLoginModel.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _stack = json['stack'];
  }
  num? _code;
  String? _message;
  String? _stack;
AuthCompanyLoginModel copyWith({  num? code,
  String? message,
  String? stack,
}) => AuthCompanyLoginModel(  code: code ?? _code,
  message: message ?? _message,
  stack: stack ?? _stack,
);
  num? get code => _code;
  String? get message => _message;
  String? get stack => _stack;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    map['stack'] = _stack;
    return map;
  }

}