import 'dart:convert';

/// results : [{"_id":"6381b56958aa11695b12ef94","name":"BHAU","email":"bhau@test.com","id":"6381b56958aa11695b12ef94"},{"_id":"6381b830a0bdec6a7b6bd4ae","name":"BHAU","email":"bhau2@test.com","id":"6381b830a0bdec6a7b6bd4ae"},{"_id":"6381b89e2b2dd86a6f74a67c","name":"BHAU","email":"bhau@testy.com","id":"6381b89e2b2dd86a6f74a67c"},{"_id":"6381bc322b2dd86a6f74a68c","name":"BHAU","email":"bhau@tes.com","id":"6381bc322b2dd86a6f74a68c"}]
/// page : 1
/// limit : 10
/// totalPages : 1
/// totalResults : 4

SuperAdminOrganizationGetModel superAdminOrganizationGetModelFromJson(
        String str) =>
    SuperAdminOrganizationGetModel.fromJson(json.decode(str));

String superAdminOrganizationGetModelToJson(
        SuperAdminOrganizationGetModel data) =>
    json.encode(data.toJson());

class SuperAdminOrganizationGetModel {
  SuperAdminOrganizationGetModel({
    List<Results>? results,
    num? page,
    num? limit,
    num? totalPages,
    num? totalResults,
  }) {
    _results = results;
    _page = page;
    _limit = limit;
    _totalPages = totalPages;
    _totalResults = totalResults;
  }

  SuperAdminOrganizationGetModel.fromJson(dynamic json) {
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Results.fromJson(v));
      });
    }
    _page = json['page'];
    _limit = json['limit'];
    _totalPages = json['totalPages'];
    _totalResults = json['totalResults'];
  }

  List<Results>? _results;
  num? _page;
  num? _limit;
  num? _totalPages;
  num? _totalResults;

  SuperAdminOrganizationGetModel copyWith({
    List<Results>? results,
    num? page,
    num? limit,
    num? totalPages,
    num? totalResults,
  }) =>
      SuperAdminOrganizationGetModel(
        results: results ?? _results,
        page: page ?? _page,
        limit: limit ?? _limit,
        totalPages: totalPages ?? _totalPages,
        totalResults: totalResults ?? _totalResults,
      );

  List<Results>? get results => _results;

  num? get page => _page;

  num? get limit => _limit;

  num? get totalPages => _totalPages;

  num? get totalResults => _totalResults;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    map['page'] = _page;
    map['limit'] = _limit;
    map['totalPages'] = _totalPages;
    map['totalResults'] = _totalResults;
    return map;
  }
}

/// _id : "6381b56958aa11695b12ef94"
/// name : "BHAU"
/// email : "bhau@test.com"
/// id : "6381b56958aa11695b12ef94"

Results resultsFromJson(String str) => Results.fromJson(json.decode(str));

String resultsToJson(Results data) => json.encode(data.toJson());

class Results {
  Results({
    String? id,
    String? name,
    String? email,
  }) {
    _id = id;
    _name = name;
    _email = email;
  }

  Results.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _email = json['email'];
  }

  String? _id;
  String? _name;
  String? _email;

  Results copyWith({
    String? id,
    String? name,
    String? email,
  }) =>
      Results(
        id: id ?? _id,
        name: name ?? _name,
        email: email ?? _email,
      );

  String? get id => _id;

  String? get name => _name;

  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    map['email'] = _email;

    return map;
  }
}
