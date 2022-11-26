import 'dart:convert';
/// employee : {"role":"organization","name":"BHAU","email":"bhau2@test.com","organization":"6381b830a0bdec6a7b6bd4ae","id":"6381b830a0bdec6a7b6bd4b1"}
/// tokens : {"access":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxYjgzMGEwYmRlYzZhN2I2YmQ0YjEiLCJpYXQiOjE2Njk0NjIxNDgsImV4cCI6MTY2OTQ2Mzk0OCwidHlwZSI6ImFjY2VzcyJ9.Zl3M8tuPQBl-2Kai8uWZ8WarRcqMdF15HqD1f8EQ8mw","expires":"2022-11-26T11:59:08.119Z"},"refresh":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxYjgzMGEwYmRlYzZhN2I2YmQ0YjEiLCJpYXQiOjE2Njk0NjIxNDgsImV4cCI6MTY3MjA1NDE0OCwidHlwZSI6InJlZnJlc2gifQ.eLqijYZGIXFaBHQ-TASnzc782-Mtbz5FfuEXi7Xg9bQ","expires":"2022-12-26T11:29:08.120Z"}}

AuthOrganizationLoginPostModel authOrganizationLoginPostModelFromJson(String str) => AuthOrganizationLoginPostModel.fromJson(json.decode(str));
String authOrganizationLoginPostModelToJson(AuthOrganizationLoginPostModel data) => json.encode(data.toJson());
class AuthOrganizationLoginPostModel {
  AuthOrganizationLoginPostModel({
      Employee? employee, 
      Tokens? tokens,}){
    _employee = employee;
    _tokens = tokens;
}

  AuthOrganizationLoginPostModel.fromJson(dynamic json) {
    _employee = json['employee'] != null ? Employee.fromJson(json['employee']) : null;
    _tokens = json['tokens'] != null ? Tokens.fromJson(json['tokens']) : null;
  }
  Employee? _employee;
  Tokens? _tokens;
AuthOrganizationLoginPostModel copyWith({  Employee? employee,
  Tokens? tokens,
}) => AuthOrganizationLoginPostModel(  employee: employee ?? _employee,
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

/// access : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxYjgzMGEwYmRlYzZhN2I2YmQ0YjEiLCJpYXQiOjE2Njk0NjIxNDgsImV4cCI6MTY2OTQ2Mzk0OCwidHlwZSI6ImFjY2VzcyJ9.Zl3M8tuPQBl-2Kai8uWZ8WarRcqMdF15HqD1f8EQ8mw","expires":"2022-11-26T11:59:08.119Z"}
/// refresh : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxYjgzMGEwYmRlYzZhN2I2YmQ0YjEiLCJpYXQiOjE2Njk0NjIxNDgsImV4cCI6MTY3MjA1NDE0OCwidHlwZSI6InJlZnJlc2gifQ.eLqijYZGIXFaBHQ-TASnzc782-Mtbz5FfuEXi7Xg9bQ","expires":"2022-12-26T11:29:08.120Z"}

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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxYjgzMGEwYmRlYzZhN2I2YmQ0YjEiLCJpYXQiOjE2Njk0NjIxNDgsImV4cCI6MTY3MjA1NDE0OCwidHlwZSI6InJlZnJlc2gifQ.eLqijYZGIXFaBHQ-TASnzc782-Mtbz5FfuEXi7Xg9bQ"
/// expires : "2022-12-26T11:29:08.120Z"

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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxYjgzMGEwYmRlYzZhN2I2YmQ0YjEiLCJpYXQiOjE2Njk0NjIxNDgsImV4cCI6MTY2OTQ2Mzk0OCwidHlwZSI6ImFjY2VzcyJ9.Zl3M8tuPQBl-2Kai8uWZ8WarRcqMdF15HqD1f8EQ8mw"
/// expires : "2022-11-26T11:59:08.119Z"

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

/// role : "organization"
/// name : "BHAU"
/// email : "bhau2@test.com"
/// organization : "6381b830a0bdec6a7b6bd4ae"
/// id : "6381b830a0bdec6a7b6bd4b1"

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