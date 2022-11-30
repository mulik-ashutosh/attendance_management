import 'dart:convert';
/// role : "employee"
/// email : "anand6@bi.com"
/// cardId : "CARD0004"
/// name : "Anand Odedara 3"
/// mobile : "9087654321"
/// company : "638213d02b2dd86a6f74a6ce"
/// id : "63831d9b6882c5853e743362"

CompanyCreateEmployeeModel companyCreateEmployeeModelFromJson(String str) => CompanyCreateEmployeeModel.fromJson(json.decode(str));
String companyCreateEmployeeModelToJson(CompanyCreateEmployeeModel data) => json.encode(data.toJson());
class CompanyCreateEmployeeModel {
  CompanyCreateEmployeeModel({
      String? role, 
      String? email, 
      String? cardId, 
      String? name, 
      String? mobile, 
      String? company, 
      String? id,}){
    _role = role;
    _email = email;
    _cardId = cardId;
    _name = name;
    _mobile = mobile;
    _company = company;
    _id = id;
}

  CompanyCreateEmployeeModel.fromJson(dynamic json) {
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
  String? _company;
  String? _id;
CompanyCreateEmployeeModel copyWith({  String? role,
  String? email,
  String? cardId,
  String? name,
  String? mobile,
  String? company,
  String? id,
}) => CompanyCreateEmployeeModel(  role: role ?? _role,
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
  String? get company => _company;
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