import 'dart:convert';
/// code : 403
/// message : "Forbidden"
/// stack : "Error: Forbidden\n    at /home/ubuntu/apps/attendance-system-api/src/middlewares/auth.js:16:21\n    at JwtStrategy.strategy.success (/home/ubuntu/apps/attendance-system-api/node_modules/passport/lib/middleware/authenticate.js:219:18)\n    at verified (/home/ubuntu/apps/attendance-system-api/node_modules/passport-jwt/lib/strategy.js:115:41)\n    at JwtStrategy.jwtVerify [as _verify] (/home/ubuntu/apps/attendance-system-api/src/config/passport.js:20:5)\n    at runMicrotasks (<anonymous>)\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)"

CompanyCreateEmployeePostModel companyCreateEmployeePostModelFromJson(String str) => CompanyCreateEmployeePostModel.fromJson(json.decode(str));
String companyCreateEmployeePostModelToJson(CompanyCreateEmployeePostModel data) => json.encode(data.toJson());
class CompanyCreateEmployeePostModel {
  CompanyCreateEmployeePostModel({
      num? code, 
      String? message, 
      String? stack,}){
    _code = code;
    _message = message;
    _stack = stack;
}

  CompanyCreateEmployeePostModel.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _stack = json['stack'];
  }
  num? _code;
  String? _message;
  String? _stack;
CompanyCreateEmployeePostModel copyWith({  num? code,
  String? message,
  String? stack,
}) => CompanyCreateEmployeePostModel(  code: code ?? _code,
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