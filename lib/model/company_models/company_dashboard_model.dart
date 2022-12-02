import 'dart:convert';
/// todayEntered : 0
/// totalEmployees : 1

CompanyDashboardModel companyDashboardModelFromJson(String str) => CompanyDashboardModel.fromJson(json.decode(str));
String companyDashboardModelToJson(CompanyDashboardModel data) => json.encode(data.toJson());
class CompanyDashboardModel {
  CompanyDashboardModel({
      num? todayEntered, 
      num? totalEmployees,}){
    _todayEntered = todayEntered;
    _totalEmployees = totalEmployees;
}

  CompanyDashboardModel.fromJson(dynamic json) {
    _todayEntered = json['todayEntered'];
    _totalEmployees = json['totalEmployees'];
  }
  num? _todayEntered;
  num? _totalEmployees;
CompanyDashboardModel copyWith({  num? todayEntered,
  num? totalEmployees,
}) => CompanyDashboardModel(  todayEntered: todayEntered ?? _todayEntered,
  totalEmployees: totalEmployees ?? _totalEmployees,
);
  num? get todayEntered => _todayEntered;
  num? get totalEmployees => _totalEmployees;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['todayEntered'] = _todayEntered;
    map['totalEmployees'] = _totalEmployees;
    return map;
  }

}