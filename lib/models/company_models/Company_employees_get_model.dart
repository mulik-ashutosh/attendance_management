class CompanyEmployeesGetModel {
  CompanyEmployeesGetModel({
      this.code, 
      this.message, 
      this.stack,});

  CompanyEmployeesGetModel.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    stack = json['stack'];
  }
  int code;
  String message;
  String stack;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    map['stack'] = stack;
    return map;
  }

}