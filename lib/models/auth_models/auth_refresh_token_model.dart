import 'dart:convert';
/// access : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdiNDcwM2ZjMjA0NzEwNjIzY2E2MTkiLCJpYXQiOjE2NjkwOTI4ODYsImV4cCI6MTY2OTA5NDY4NiwidHlwZSI6ImFjY2VzcyJ9.utcN9z5ya9bH3zN-1-d9BAucQ1Vx7u8RbepAHxvPhRw","expires":"2022-11-22T05:24:46.597Z"}
/// refresh : {"token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdiNDcwM2ZjMjA0NzEwNjIzY2E2MTkiLCJpYXQiOjE2NjkwOTI4ODYsImV4cCI6MTY3MTY4NDg4NiwidHlwZSI6InJlZnJlc2gifQ.RSmswuaNcrHbGx7Q0BHeW628Kvk5IqyOz6okhpw2_H8","expires":"2022-12-22T04:54:46.598Z"}

AuthRefreshTokenModel authRefreshTokenModelFromJson(String str) => AuthRefreshTokenModel.fromJson(json.decode(str));
String authRefreshTokenModelToJson(AuthRefreshTokenModel data) => json.encode(data.toJson());
class AuthRefreshTokenModel {
  AuthRefreshTokenModel({
      Access? access, 
      Refresh? refresh,}){
    _access = access;
    _refresh = refresh;
}

  AuthRefreshTokenModel.fromJson(dynamic json) {
    _access = json['access'] != null ? Access.fromJson(json['access']) : null;
    _refresh = json['refresh'] != null ? Refresh.fromJson(json['refresh']) : null;
  }
  Access? _access;
  Refresh? _refresh;
AuthRefreshTokenModel copyWith({  Access? access,
  Refresh? refresh,
}) => AuthRefreshTokenModel(  access: access ?? _access,
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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdiNDcwM2ZjMjA0NzEwNjIzY2E2MTkiLCJpYXQiOjE2NjkwOTI4ODYsImV4cCI6MTY3MTY4NDg4NiwidHlwZSI6InJlZnJlc2gifQ.RSmswuaNcrHbGx7Q0BHeW628Kvk5IqyOz6okhpw2_H8"
/// expires : "2022-12-22T04:54:46.598Z"

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

/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MzdiNDcwM2ZjMjA0NzEwNjIzY2E2MTkiLCJpYXQiOjE2NjkwOTI4ODYsImV4cCI6MTY2OTA5NDY4NiwidHlwZSI6ImFjY2VzcyJ9.utcN9z5ya9bH3zN-1-d9BAucQ1Vx7u8RbepAHxvPhRw"
/// expires : "2022-11-22T05:24:46.597Z"

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