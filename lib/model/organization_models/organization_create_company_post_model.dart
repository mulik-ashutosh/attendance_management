import 'dart:convert';
/// name : "BHAU2"
/// email : "bhau@test3.com"
/// organization : "6381b830a0bdec6a7b6bd4ae"
/// id : "638250df2b2dd86a6f74a71d"

OrganizationCreateCompanyPostModel organizationCreateCompanyPostModelFromJson(String str) => OrganizationCreateCompanyPostModel.fromJson(json.decode(str));
String organizationCreateCompanyPostModelToJson(OrganizationCreateCompanyPostModel data) => json.encode(data.toJson());
class OrganizationCreateCompanyPostModel {
  OrganizationCreateCompanyPostModel({
      String? name, 
      String? email, 
      String? organization, 
      String? id,}){
    _name = name;
    _email = email;
    _organization = organization;
    _id = id;
}

  OrganizationCreateCompanyPostModel.fromJson(dynamic json) {
    _name = json['name'];
    _email = json['email'];
    _organization = json['organization'];
    _id = json['id'];
  }
  String? _name;
  String? _email;
  String? _organization;
  String? _id;
OrganizationCreateCompanyPostModel copyWith({  String? name,
  String? email,
  String? organization,
  String? id,
}) => OrganizationCreateCompanyPostModel(  name: name ?? _name,
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