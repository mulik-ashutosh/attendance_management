import 'dart:convert';
/// code : 500
/// message : "Cannot read properties of undefined (reading '_id')"
/// stack : "TypeError: Cannot read properties of undefined (reading '_id')\n    at /home/ubuntu/apps/attendance-system-api/src/controllers/company.controller.js:16:50\n    at /home/ubuntu/apps/attendance-system-api/src/utils/catchAsync.js:2:19\n    at Layer.handle [as handle_request] (/home/ubuntu/apps/attendance-system-api/node_modules/express/lib/router/layer.js:95:5)\n    at next (/home/ubuntu/apps/attendance-system-api/node_modules/express/lib/router/route.js:137:13)\n    at /home/ubuntu/apps/attendance-system-api/src/middlewares/validate.js:18:10\n    at Layer.handle [as handle_request] (/home/ubuntu/apps/attendance-system-api/node_modules/express/lib/router/layer.js:95:5)\n    at next (/home/ubuntu/apps/attendance-system-api/node_modules/express/lib/router/route.js:137:13)\n    at /home/ubuntu/apps/attendance-system-api/src/middlewares/auth.js:27:17\n    at runMicrotasks (<anonymous>)\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)"

OrganizationCompaniesGetModel organizationCompaniesGetModelFromJson(String str) => OrganizationCompaniesGetModel.fromJson(json.decode(str));
String organizationCompaniesGetModelToJson(OrganizationCompaniesGetModel data) => json.encode(data.toJson());
class OrganizationCompaniesGetModel {
  OrganizationCompaniesGetModel({
      num? code, 
      String? message, 
      String? stack,}){
    _code = code;
    _message = message;
    _stack = stack;
}

  OrganizationCompaniesGetModel.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _stack = json['stack'];
  }
  num? _code;
  String? _message;
  String? _stack;
OrganizationCompaniesGetModel copyWith({  num? code,
  String? message,
  String? stack,
}) => OrganizationCompaniesGetModel(  code: code ?? _code,
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