import 'dart:convert';

/// employee : {"role":"superAdmin","_id":"637a031d50d892cf72e4bf6e","email":"superadmin@bi.com","id":"637a031d50d892cf72e4bf6e"}
/// tokens : {"access":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdhMDMxZDUwZDg5MmNmNzJlNGJmNmUiLCJpYXQiOjE2NjkxMDE0NTcsImV4cCI6MTY2OTEwMzI1NywidHlwZSI6ImFjY2VzcyJ9.9i0Ce3ChY-7aiyB3dVxSjuUTs9aB0BAJUYqZth-rubE","expires":"2022-11-22T07:47:37.090Z"},"refresh":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdhMDMxZDUwZDg5MmNmNzJlNGJmNmUiLCJpYXQiOjE2NjkxMDE0NTcsImV4cCI6MTY3MTY5MzQ1NywidHlwZSI6InJlZnJlc2gifQ.AYcUFlk-RKO_gPiNx0-VV1EHaH-6-FRsXpaaGm9x6Yw","expires":"2022-12-22T07:17:37.091Z"}}

AuthSuperAdminLoginModel authSuperAdminLoginModelFromJson(String str) =>
    AuthSuperAdminLoginModel.fromJson(json.decode(str));

String authSuperAdminLoginModelToJson(AuthSuperAdminLoginModel data) =>
    json.encode(data.toJson());

class AuthSuperAdminLoginModel {
  AuthSuperAdminLoginModel({
    Employee? employee,
    Tokens? tokens,
  }) {
    _employee = employee;
    _tokens = tokens;
  }

  AuthSuperAdminLoginModel.fromJson(dynamic json) {
    _employee =
        json['employee'] != null ? Employee.fromJson(json['employee']) : null;
    _tokens = json['tokens'] != null ? Tokens.fromJson(json['tokens']) : null;
  }

  Employee? _employee;
  Tokens? _tokens;

  AuthSuperAdminLoginModel copyWith({
    Employee? employee,
    Tokens? tokens,
  }) =>
      AuthSuperAdminLoginModel(
        employee: employee ?? _employee,
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

/// access : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdhMDMxZDUwZDg5MmNmNzJlNGJmNmUiLCJpYXQiOjE2NjkxMDE0NTcsImV4cCI6MTY2OTEwMzI1NywidHlwZSI6ImFjY2VzcyJ9.9i0Ce3ChY-7aiyB3dVxSjuUTs9aB0BAJUYqZth-rubE","expires":"2022-11-22T07:47:37.090Z"}
/// refresh : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdhMDMxZDUwZDg5MmNmNzJlNGJmNmUiLCJpYXQiOjE2NjkxMDE0NTcsImV4cCI6MTY3MTY5MzQ1NywidHlwZSI6InJlZnJlc2gifQ.AYcUFlk-RKO_gPiNx0-VV1EHaH-6-FRsXpaaGm9x6Yw","expires":"2022-12-22T07:17:37.091Z"}

Tokens tokensFromJson(String str) => Tokens.fromJson(json.decode(str));

String tokensToJson(Tokens data) => json.encode(data.toJson());

class Tokens {
  Tokens({
    Access? access,
    Refresh? refresh,
  }) {
    _access = access;
    _refresh = refresh;
  }

  Tokens.fromJson(dynamic json) {
    _access = json['access'] != null ? Access.fromJson(json['access']) : null;
    _refresh =
        json['refresh'] != null ? Refresh.fromJson(json['refresh']) : null;
  }

  Access? _access;
  Refresh? _refresh;

  Tokens copyWith({
    Access? access,
    Refresh? refresh,
  }) =>
      Tokens(
        access: access ?? _access,
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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdhMDMxZDUwZDg5MmNmNzJlNGJmNmUiLCJpYXQiOjE2NjkxMDE0NTcsImV4cCI6MTY3MTY5MzQ1NywidHlwZSI6InJlZnJlc2gifQ.AYcUFlk-RKO_gPiNx0-VV1EHaH-6-FRsXpaaGm9x6Yw"
/// expires : "2022-12-22T07:17:37.091Z"

Refresh refreshFromJson(String str) => Refresh.fromJson(json.decode(str));

String refreshToJson(Refresh data) => json.encode(data.toJson());

class Refresh {
  Refresh({
    String? token,
    String? expires,
  }) {
    _token = token;
    _expires = expires;
  }

  Refresh.fromJson(dynamic json) {
    _token = json['token'];
    _expires = json['expires'];
  }

  String? _token;
  String? _expires;

  Refresh copyWith({
    String? token,
    String? expires,
  }) =>
      Refresh(
        token: token ?? _token,
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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdhMDMxZDUwZDg5MmNmNzJlNGJmNmUiLCJpYXQiOjE2NjkxMDE0NTcsImV4cCI6MTY2OTEwMzI1NywidHlwZSI6ImFjY2VzcyJ9.9i0Ce3ChY-7aiyB3dVxSjuUTs9aB0BAJUYqZth-rubE"
/// expires : "2022-11-22T07:47:37.090Z"

Access accessFromJson(String str) => Access.fromJson(json.decode(str));

String accessToJson(Access data) => json.encode(data.toJson());

class Access {
  Access({
    String? token,
    String? expires,
  }) {
    _token = token;
    _expires = expires;
  }

  Access.fromJson(dynamic json) {
    _token = json['token'];
    _expires = json['expires'];
  }

  String? _token;
  String? _expires;

  Access copyWith({
    String? token,
    String? expires,
  }) =>
      Access(
        token: token ?? _token,
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

/// role : "superAdmin"
/// _id : "637a031d50d892cf72e4bf6e"
/// email : "superadmin@bi.com"
/// id : "637a031d50d892cf72e4bf6e"

Employee employeeFromJson(String str) => Employee.fromJson(json.decode(str));

String employeeToJson(Employee data) => json.encode(data.toJson());

class Employee {
  Employee({
    String? role,
    String? email,
    String? id,
  }) {
    _role = role;
    _email = email;
    _id = id;
  }

  Employee.fromJson(dynamic json) {
    _role = json['role'];
    _email = json['email'];
    _id = json['id'];
  }

  String? _role;
  String? _email;
  String? _id;

  Employee copyWith({
    String? role,
    String? email,
    String? id,
  }) =>
      Employee(
        role: role ?? _role,
        email: email ?? _email,
        id: id ?? _id,
      );

  String? get role => _role;

  String? get email => _email;

  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['role'] = _role;
    map['email'] = _email;
    map['id'] = _id;
    return map;
  }
}
