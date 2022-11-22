import 'dart:convert';
/// employee : {"role":"organization","_id":"637b4703fc204710623ca619","name":"BHAU","email":"bhau@test.com","company":"637b4703fc204710623ca616","id":"637b4703fc204710623ca619"}
/// tokens : {"access":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdiNDcwM2ZjMjA0NzEwNjIzY2E2MTkiLCJpYXQiOjE2NjkwOTI2NTYsImV4cCI6MTY2OTA5NDQ1NiwidHlwZSI6ImFjY2VzcyJ9.4qdJUPq8kbubvLqNPVfZZ0rmhkpI4LVQ4-nAAojfRHw","expires":"2022-11-22T05:20:56.478Z"},"refresh":{"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdiNDcwM2ZjMjA0NzEwNjIzY2E2MTkiLCJpYXQiOjE2NjkwOTI2NTYsImV4cCI6MTY3MTY4NDY1NiwidHlwZSI6InJlZnJlc2gifQ.9O_leijN0oiuqYsPfGX82jQDC5qeyKTSaRDpEU9S8Cw","expires":"2022-12-22T04:50:56.479Z"}}

AuthOrganizationLoginModel authOrganizationLoginModelFromJson(String str) => AuthOrganizationLoginModel.fromJson(json.decode(str));
String authOrganizationLoginModelToJson(AuthOrganizationLoginModel data) => json.encode(data.toJson());
class AuthOrganizationLoginModel {
  AuthOrganizationLoginModel({
      Employee? employee, 
      Tokens? tokens,}){
    _employee = employee;
    _tokens = tokens;
}

  AuthOrganizationLoginModel.fromJson(dynamic json) {
    _employee = json['employee'] != null ? Employee.fromJson(json['employee']) : null;
    _tokens = json['tokens'] != null ? Tokens.fromJson(json['tokens']) : null;
  }
  Employee? _employee;
  Tokens? _tokens;
AuthOrganizationLoginModel copyWith({  Employee? employee,
  Tokens? tokens,
}) => AuthOrganizationLoginModel(  employee: employee ?? _employee,
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

/// access : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdiNDcwM2ZjMjA0NzEwNjIzY2E2MTkiLCJpYXQiOjE2NjkwOTI2NTYsImV4cCI6MTY2OTA5NDQ1NiwidHlwZSI6ImFjY2VzcyJ9.4qdJUPq8kbubvLqNPVfZZ0rmhkpI4LVQ4-nAAojfRHw","expires":"2022-11-22T05:20:56.478Z"}
/// refresh : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdiNDcwM2ZjMjA0NzEwNjIzY2E2MTkiLCJpYXQiOjE2NjkwOTI2NTYsImV4cCI6MTY3MTY4NDY1NiwidHlwZSI6InJlZnJlc2gifQ.9O_leijN0oiuqYsPfGX82jQDC5qeyKTSaRDpEU9S8Cw","expires":"2022-12-22T04:50:56.479Z"}

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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdiNDcwM2ZjMjA0NzEwNjIzY2E2MTkiLCJpYXQiOjE2NjkwOTI2NTYsImV4cCI6MTY3MTY4NDY1NiwidHlwZSI6InJlZnJlc2gifQ.9O_leijN0oiuqYsPfGX82jQDC5qeyKTSaRDpEU9S8Cw"
/// expires : "2022-12-22T04:50:56.479Z"

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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdiNDcwM2ZjMjA0NzEwNjIzY2E2MTkiLCJpYXQiOjE2NjkwOTI2NTYsImV4cCI6MTY2OTA5NDQ1NiwidHlwZSI6ImFjY2VzcyJ9.4qdJUPq8kbubvLqNPVfZZ0rmhkpI4LVQ4-nAAojfRHw"
/// expires : "2022-11-22T05:20:56.478Z"

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
/// _id : "637b4703fc204710623ca619"
/// name : "BHAU"
/// email : "bhau@test.com"
/// company : "637b4703fc204710623ca616"
/// id : "637b4703fc204710623ca619"

Employee employeeFromJson(String str) => Employee.fromJson(json.decode(str));
String employeeToJson(Employee data) => json.encode(data.toJson());
class Employee {
  Employee({
      String? role, 
      String? id, 
      String? name, 
      String? email, 
      String? company, 
      String? id,}){
    _role = role;
    _id = id;
    _name = name;
    _email = email;
    _company = company;
    _id = id;
}

  Employee.fromJson(dynamic json) {
    _role = json['role'];
    _id = json['_id'];
    _name = json['name'];
    _email = json['email'];
    _company = json['company'];
    _id = json['id'];
  }
  String? _role;
  String? _id;
  String? _name;
  String? _email;
  String? _company;
  String? _id;
Employee copyWith({  String? role,
  String? id,
  String? name,
  String? email,
  String? company,
  String? id,
}) => Employee(  role: role ?? _role,
  id: id ?? _id,
  name: name ?? _name,
  email: email ?? _email,
  company: company ?? _company,
  id: id ?? _id,
);
  String? get role => _role;
  String? get id => _id;
  String? get name => _name;
  String? get email => _email;
  String? get company => _company;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['role'] = _role;
    map['_id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['company'] = _company;
    map['id'] = _id;
    return map;
  }

}