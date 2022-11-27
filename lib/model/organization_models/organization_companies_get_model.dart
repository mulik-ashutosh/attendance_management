import 'dart:convert';
/// results : [{"name":"BI","email":"company@bia.com","organization":"6381b89e2b2dd86a6f74a67c","id":"6382e05ea0bdec6a7b6bd545"}]
/// page : 1
/// limit : 10
/// totalPages : 1
/// totalResults : 1

OrganizationCompaniesGetModel organizationCompaniesGetModelFromJson(String str) => OrganizationCompaniesGetModel.fromJson(json.decode(str));
String organizationCompaniesGetModelToJson(OrganizationCompaniesGetModel data) => json.encode(data.toJson());
class OrganizationCompaniesGetModel {
  OrganizationCompaniesGetModel({
      List<Results>? results, 
      num? page, 
      num? limit, 
      num? totalPages, 
      num? totalResults,}){
    _results = results;
    _page = page;
    _limit = limit;
    _totalPages = totalPages;
    _totalResults = totalResults;
}

  OrganizationCompaniesGetModel.fromJson(dynamic json) {
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
OrganizationCompaniesGetModel copyWith({  List<Results>? results,
  num? page,
  num? limit,
  num? totalPages,
  num? totalResults,
}) => OrganizationCompaniesGetModel(  results: results ?? _results,
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

/// name : "BI"
/// email : "company@bia.com"
/// organization : "6381b89e2b2dd86a6f74a67c"
/// id : "6382e05ea0bdec6a7b6bd545"

Results resultsFromJson(String str) => Results.fromJson(json.decode(str));
String resultsToJson(Results data) => json.encode(data.toJson());
class Results {
  Results({
      String? name, 
      String? email, 
      String? organization, 
      String? id,}){
    _name = name;
    _email = email;
    _organization = organization;
    _id = id;
}

  Results.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _organization = json['organization'];
    _id = json['id'];
  }
  String? _name;
  String? _email;
  String? _organization;
  String? _id;
Results copyWith({  String? name,
  String? email,
  String? organization,
  String? id,
}) => Results(  name: name ?? _name,
  email: email ?? _email,
  organization: organization ?? _organization,
  id: id ?? _id,
);
  String? get name => _name;
  String? get email => _email;
  String? get organization => _organization;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['email'] = _email;
    map['organization'] = _organization;
    map['id'] = _id;
    return map;
  }

}