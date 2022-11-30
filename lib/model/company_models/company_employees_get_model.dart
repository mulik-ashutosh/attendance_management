import 'dart:convert';
/// results : [{"role":"employee","email":"anand5@bi.com","cardId":"CARD0003","name":"Anand Odedara 3","mobile":"9876543210","company":null,"id":"638216c72b2dd86a6f74a6e0"}]
/// page : 1
/// limit : 10
/// totalPages : 1
/// totalResults : 1

CompanyEmployeesGetModel companyEmployeesGetModelFromJson(String str) => CompanyEmployeesGetModel.fromJson(json.decode(str));
String companyEmployeesGetModelToJson(CompanyEmployeesGetModel data) => json.encode(data.toJson());
class CompanyEmployeesGetModel {
  CompanyEmployeesGetModel({
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

  CompanyEmployeesGetModel.fromJson(dynamic json) {
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
CompanyEmployeesGetModel copyWith({  List<Results>? results,
  num? page,
  num? limit,
  num? totalPages,
  num? totalResults,
}) => CompanyEmployeesGetModel(  results: results ?? _results,
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

/// role : "employee"
/// email : "anand5@bi.com"
/// cardId : "CARD0003"
/// name : "Anand Odedara 3"
/// mobile : "9876543210"
/// company : null
/// id : "638216c72b2dd86a6f74a6e0"

Results resultsFromJson(String str) => Results.fromJson(json.decode(str));
String resultsToJson(Results data) => json.encode(data.toJson());
class Results {
  Results({
      String? role, 
      String? email, 
      String? cardId, 
      String? name, 
      String? mobile, 
      dynamic company, 
      String? id,}){
    _role = role;
    _email = email;
    _cardId = cardId;
    _name = name;
    _mobile = mobile;
    _company = company;
    _id = id;
}

  Results.fromJson(dynamic json) {
    _role = json['role'];
    _email = json['email'];
    _cardId = json['cardId'];
    _name = json['name'];
    _mobile = json['mobile'];
    _company = json['company'];
    _id = json['id'];
  }
  String? _role;
  String? _email;
  String? _cardId;
  String? _name;
  String? _mobile;
  dynamic _company;
  String? _id;
Results copyWith({  String? role,
  String? email,
  String? cardId,
  String? name,
  String? mobile,
  dynamic company,
  String? id,
}) => Results(  role: role ?? _role,
  email: email ?? _email,
  cardId: cardId ?? _cardId,
  name: name ?? _name,
  mobile: mobile ?? _mobile,
  company: company ?? _company,
  id: id ?? _id,
);
  String? get role => _role;
  String? get email => _email;
  String? get cardId => _cardId;
  String? get name => _name;
  String? get mobile => _mobile;
  dynamic get company => _company;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['role'] = _role;
    map['email'] = _email;
    map['cardId'] = _cardId;
    map['name'] = _name;
    map['mobile'] = _mobile;
    map['company'] = _company;
    map['id'] = _id;
    return map;
  }

}