import 'dart:convert';

/// employee : {"role":"superAdmin","_id":"6381ce6dd1e6ff6343257ea8","email":"sandesh@blockchaininternationale.com","name":"Sandesh","id":"6381ce6dd1e6ff6343257ea8"}
/// tokens : {"access":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxY2U2ZGQxZTZmZjYzNDMyNTdlYTgiLCJpYXQiOjE2Njk0NTgyMDUsImV4cCI6MTY2OTQ2MDAwNSwidHlwZSI6ImFjY2VzcyJ9.TAIuNe0Yn6u4ETAPOGpuwbF1CggjLq-9jlWbCDH9vzY","expires":"2022-11-26T10:53:25.564Z"},"refresh":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxY2U2ZGQxZTZmZjYzNDMyNTdlYTgiLCJpYXQiOjE2Njk0NTgyMDUsImV4cCI6MTY3MjA1MDIwNSwidHlwZSI6InJlZnJlc2gifQ.S7nJXo94PAN4lpnVIENWb4CjkOShIQb-T6R582EApO4","expires":"2022-12-26T10:23:25.565Z"}}

AuthSuperAdminLoginPostModel authSuperAdminLoginPostModelFromJson(String str) =>
    AuthSuperAdminLoginPostModel.fromJson(json.decode(str));

String authSuperAdminLoginPostModelToJson(AuthSuperAdminLoginPostModel data) =>
    json.encode(data.toJson());

class AuthSuperAdminLoginPostModel {
  AuthSuperAdminLoginPostModel({
    Employee? employee,
    Tokens? tokens,
  }) {
    _employee = employee;
    _tokens = tokens;
  }

  AuthSuperAdminLoginPostModel.fromJson(dynamic json) {
    _employee =
        json['employee'] != null ? Employee.fromJson(json['employee']) : null;
    _tokens = json['tokens'] != null ? Tokens.fromJson(json['tokens']) : null;
  }

  Employee? _employee;
  Tokens? _tokens;

  AuthSuperAdminLoginPostModel copyWith({
    Employee? employee,
    Tokens? tokens,
  }) =>
      AuthSuperAdminLoginPostModel(
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

/// access : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxY2U2ZGQxZTZmZjYzNDMyNTdlYTgiLCJpYXQiOjE2Njk0NTgyMDUsImV4cCI6MTY2OTQ2MDAwNSwidHlwZSI6ImFjY2VzcyJ9.TAIuNe0Yn6u4ETAPOGpuwbF1CggjLq-9jlWbCDH9vzY","expires":"2022-11-26T10:53:25.564Z"}
/// refresh : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxY2U2ZGQxZTZmZjYzNDMyNTdlYTgiLCJpYXQiOjE2Njk0NTgyMDUsImV4cCI6MTY3MjA1MDIwNSwidHlwZSI6InJlZnJlc2gifQ.S7nJXo94PAN4lpnVIENWb4CjkOShIQb-T6R582EApO4","expires":"2022-12-26T10:23:25.565Z"}

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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxY2U2ZGQxZTZmZjYzNDMyNTdlYTgiLCJpYXQiOjE2Njk0NTgyMDUsImV4cCI6MTY3MjA1MDIwNSwidHlwZSI6InJlZnJlc2gifQ.S7nJXo94PAN4lpnVIENWb4CjkOShIQb-T6R582EApO4"
/// expires : "2022-12-26T10:23:25.565Z"

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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzgxY2U2ZGQxZTZmZjYzNDMyNTdlYTgiLCJpYXQiOjE2Njk0NTgyMDUsImV4cCI6MTY2OTQ2MDAwNSwidHlwZSI6ImFjY2VzcyJ9.TAIuNe0Yn6u4ETAPOGpuwbF1CggjLq-9jlWbCDH9vzY"
/// expires : "2022-11-26T10:53:25.564Z"

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
/// _id : "6381ce6dd1e6ff6343257ea8"
/// email : "sandesh@blockchaininternationale.com"
/// name : "Sandesh"
/// id : "6381ce6dd1e6ff6343257ea8"

Employee employeeFromJson(String str) => Employee.fromJson(json.decode(str));

String employeeToJson(Employee data) => json.encode(data.toJson());

class Employee {
  Employee({
    String? role,
    String? email,
    String? name,
    String? id,
  }) {
    _role = role;

    _email = email;
    _name = name;
    _id = id;
  }

  Employee.fromJson(dynamic json) {
    _role = json['role'];

    _email = json['email'];
    _name = json['name'];
    _id = json['id'];
  }

  String? _role;

  String? _email;
  String? _name;
  String? _id;

  Employee copyWith({
    String? role,
    String? email,
    String? name,
    String? id,
  }) =>
      Employee(
        role: role ?? _role,
        email: email ?? _email,
        name: name ?? _name,
        id: id ?? _id,
      );

  String? get role => _role;

  String? get email => _email;

  String? get name => _name;

  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['role'] = _role;

    map['email'] = _email;
    map['name'] = _name;
    map['id'] = _id;
    return map;
  }
}
