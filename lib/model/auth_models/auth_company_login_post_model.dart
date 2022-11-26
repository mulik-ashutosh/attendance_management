import 'dart:convert';
/// employee : {"role":"company","name":"BI","email":"company@bi.com","organization":"6381b830a0bdec6a7b6bd4ae","id":"638213d02b2dd86a6f74a6ce"}
/// tokens : {"access":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgyMTNkMDJiMmRkODZhNmY3NGE2Y2UiLCJpYXQiOjE2Njk0NjkyMTIsImV4cCI6MTY2OTQ3MTAxMiwidHlwZSI6ImFjY2VzcyJ9.9YdWXIE2uBlDQk-L_6yqnIxSkJiGJDX7Bol2Eq2vP2I","expires":"2022-11-26T13:56:52.663Z"},"refresh":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgyMTNkMDJiMmRkODZhNmY3NGE2Y2UiLCJpYXQiOjE2Njk0NjkyMTIsImV4cCI6MTY3MjA2MTIxMiwidHlwZSI6InJlZnJlc2gifQ.i2sr8Wi_fWKIoJI5B9Uu6HqamYxQHTWdxw-KiWZhDAg","expires":"2022-12-26T13:26:52.664Z"}}

AuthCompanyLoginPostModel authCompanyLoginPostModelFromJson(String str) => AuthCompanyLoginPostModel.fromJson(json.decode(str));
String authCompanyLoginPostModelToJson(AuthCompanyLoginPostModel data) => json.encode(data.toJson());
class AuthCompanyLoginPostModel {
  AuthCompanyLoginPostModel({
      Employee? employee, 
      Tokens? tokens,}){
    _employee = employee;
    _tokens = tokens;
}

  AuthCompanyLoginPostModel.fromJson(dynamic json) {
    _employee = json['employee'] != null ? Employee.fromJson(json['employee']) : null;
    _tokens = json['tokens'] != null ? Tokens.fromJson(json['tokens']) : null;
  }
  Employee? _employee;
  Tokens? _tokens;
AuthCompanyLoginPostModel copyWith({  Employee? employee,
  Tokens? tokens,
}) => AuthCompanyLoginPostModel(  employee: employee ?? _employee,
  tokens: tokens ?? _tokens,
);
  Employee? get employee => _employee;
  Tokens? get tokens => _tokens;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_employee != null) {
      map['employee'] = _employee?.toJson();
    }
    if (_tokens != null) {
      map['tokens'] = _tokens?.toJson();
    }
    return map;
  }

}

/// access : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgyMTNkMDJiMmRkODZhNmY3NGE2Y2UiLCJpYXQiOjE2Njk0NjkyMTIsImV4cCI6MTY2OTQ3MTAxMiwidHlwZSI6ImFjY2VzcyJ9.9YdWXIE2uBlDQk-L_6yqnIxSkJiGJDX7Bol2Eq2vP2I","expires":"2022-11-26T13:56:52.663Z"}
/// refresh : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgyMTNkMDJiMmRkODZhNmY3NGE2Y2UiLCJpYXQiOjE2Njk0NjkyMTIsImV4cCI6MTY3MjA2MTIxMiwidHlwZSI6InJlZnJlc2gifQ.i2sr8Wi_fWKIoJI5B9Uu6HqamYxQHTWdxw-KiWZhDAg","expires":"2022-12-26T13:26:52.664Z"}

Tokens tokensFromJson(String str) => Tokens.fromJson(json.decode(str));
String tokensToJson(Tokens data) => json.encode(data.toJson());
class Tokens {
  Tokens({
      Access? access, 
      Refresh? refresh,}){
    _access = access;
    _refresh = refresh;
}

  Tokens.fromJson(dynamic json) {
    _access = json['access'] != null ? Access.fromJson(json['access']) : null;
    _refresh = json['refresh'] != null ? Refresh.fromJson(json['refresh']) : null;
  }
  Access? _access;
  Refresh? _refresh;
Tokens copyWith({  Access? access,
  Refresh? refresh,
}) => Tokens(  access: access ?? _access,
  refresh: refresh ?? _refresh,
);
  Access? get access => _access;
  Refresh? get refresh => _refresh;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_access != null) {
      map['access'] = _access?.toJson();
    }
    if (_refresh != null) {
      map['refresh'] = _refresh?.toJson();
    }
    return map;
  }

}

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgyMTNkMDJiMmRkODZhNmY3NGE2Y2UiLCJpYXQiOjE2Njk0NjkyMTIsImV4cCI6MTY3MjA2MTIxMiwidHlwZSI6InJlZnJlc2gifQ.i2sr8Wi_fWKIoJI5B9Uu6HqamYxQHTWdxw-KiWZhDAg"
/// expires : "2022-12-26T13:26:52.664Z"

Refresh refreshFromJson(String str) => Refresh.fromJson(json.decode(str));
String refreshToJson(Refresh data) => json.encode(data.toJson());
class Refresh {
  Refresh({
      String? token, 
      String? expires,}){
    _token = token;
    _expires = expires;
}

  Refresh.fromJson(dynamic json) {
    _token = json['token'];
    _expires = json['expires'];
  }
  String? _token;
  String? _expires;
Refresh copyWith({  String? token,
  String? expires,
}) => Refresh(  token: token ?? _token,
  expires: expires ?? _expires,
);
  String? get token => _token;
  String? get expires => _expires;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['expires'] = _expires;
    return map;
  }

}

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgyMTNkMDJiMmRkODZhNmY3NGE2Y2UiLCJpYXQiOjE2Njk0NjkyMTIsImV4cCI6MTY2OTQ3MTAxMiwidHlwZSI6ImFjY2VzcyJ9.9YdWXIE2uBlDQk-L_6yqnIxSkJiGJDX7Bol2Eq2vP2I"
/// expires : "2022-11-26T13:56:52.663Z"

Access accessFromJson(String str) => Access.fromJson(json.decode(str));
String accessToJson(Access data) => json.encode(data.toJson());
class Access {
  Access({
      String? token, 
      String? expires,}){
    _token = token;
    _expires = expires;
}

  Access.fromJson(dynamic json) {
    _token = json['token'];
    _expires = json['expires'];
  }
  String? _token;
  String? _expires;
Access copyWith({  String? token,
  String? expires,
}) => Access(  token: token ?? _token,
  expires: expires ?? _expires,
);
  String? get token => _token;
  String? get expires => _expires;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['expires'] = _expires;
    return map;
  }

}

/// role : "company"
/// name : "BI"
/// email : "company@bi.com"
/// organization : "6381b830a0bdec6a7b6bd4ae"
/// id : "638213d02b2dd86a6f74a6ce"

Employee employeeFromJson(String str) => Employee.fromJson(json.decode(str));
String employeeToJson(Employee data) => json.encode(data.toJson());
class Employee {
  Employee({
      String? role, 
      String? name, 
      String? email, 
      String? organization, 
      String? id,}){
    _role = role;
    _name = name;
    _email = email;
    _organization = organization;
    _id = id;
}

  Employee.fromJson(dynamic json) {
    _role = json['role'];
    _name = json['name'];
    _email = json['email'];
    _organization = json['organization'];
    _id = json['id'];
  }
  String? _role;
  String? _name;
  String? _email;
  String? _organization;
  String? _id;
Employee copyWith({  String? role,
  String? name,
  String? email,
  String? organization,
  String? id,
}) => Employee(  role: role ?? _role,
  name: name ?? _name,
  email: email ?? _email,
  organization: organization ?? _organization,
  id: id ?? _id,
);
  String? get role => _role;
  String? get name => _name;
  String? get email => _email;
  String? get organization => _organization;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['role'] = _role;
    map['name'] = _name;
    map['email'] = _email;
    map['organization'] = _organization;
    map['id'] = _id;
    return map;
  }

}