import 'dart:convert';
/// todayEntered : 0
/// totalCompanies : 4
/// totalEmployees : 0

OrganizationDashboardModel organizationDashboardModelFromJson(String str) => OrganizationDashboardModel.fromJson(json.decode(str));
String organizationDashboardModelToJson(OrganizationDashboardModel data) => json.encode(data.toJson());
class OrganizationDashboardModel {
  OrganizationDashboardModel({
      num? todayEntered, 
      num? totalCompanies, 
      num? totalEmployees,}){
    _todayEntered = todayEntered;
    _totalCompanies = totalCompanies;
    _totalEmployees = totalEmployees;
}

  OrganizationDashboardModel.fromJson(dynamic json) {
    _todayEntered = json['todayEntered'];
    _totalCompanies = json['totalCompanies'];
    _totalEmployees = json['totalEmployees'];
  }
  num? _todayEntered;
  num? _totalCompanies;
  num? _totalEmployees;
OrganizationDashboardModel copyWith({  num? todayEntered,
  num? totalCompanies,
  num? totalEmployees,
}) => OrganizationDashboardModel(  todayEntered: todayEntered ?? _todayEntered,
  totalCompanies: totalCompanies ?? _totalCompanies,
  totalEmployees: totalEmployees ?? _totalEmployees,
);
  num? get todayEntered => _todayEntered;
  num? get totalCompanies => _totalCompanies;
  num? get totalEmployees => _totalEmployees;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['todayEntered'] = _todayEntered;
    map['totalCompanies'] = _totalCompanies;
    map['totalEmployees'] = _totalEmployees;
    return map;
  }

}