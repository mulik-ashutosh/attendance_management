import 'dart:convert';

/// _id : "6381bc322b2dd86a6f74a68c"
/// name : "BHAU"
/// email : "bhau@tes.com"
/// id : "6381bc322b2dd86a6f74a68c"

SuperAdminCreateOrganizationPostModel
    superAdminCreateOrganizationPostModelFromJson(String str) =>
        SuperAdminCreateOrganizationPostModel.fromJson(json.decode(str));

String superAdminCreateOrganizationPostModelToJson(
        SuperAdminCreateOrganizationPostModel data) =>
    json.encode(data.toJson());

class SuperAdminCreateOrganizationPostModel {
  SuperAdminCreateOrganizationPostModel({
    String? id,
    String? name,
    String? email,
  }) {
    _id = id;
    _name = name;
    _email = email;
  }

  SuperAdminCreateOrganizationPostModel.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _email = json['email'];
  }

  String? _id;
  String? _name;
  String? _email;

  SuperAdminCreateOrganizationPostModel copyWith({
    String? id,
    String? name,
    String? email,
  }) =>
      SuperAdminCreateOrganizationPostModel(
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
