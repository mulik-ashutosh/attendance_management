import 'dart:convert';
/// attendance : "00:00"
/// recentLog : "04:18"
/// last7days : {}

EmployeeDashboardModel employeeDashboardModelFromJson(String str) => EmployeeDashboardModel.fromJson(json.decode(str));
String employeeDashboardModelToJson(EmployeeDashboardModel data) => json.encode(data.toJson());
class EmployeeDashboardModel {
  EmployeeDashboardModel({
      String? attendance, 
      String? recentLog, 
      dynamic last7days,}){
    _attendance = attendance;
    _recentLog = recentLog;
    _last7days = last7days;
}

  EmployeeDashboardModel.fromJson(dynamic json) {
    _attendance = json['attendance'];
    _recentLog = json['recentLog'];
    _last7days = json['last7days'];
  }
  String? _attendance;
  String? _recentLog;
  dynamic _last7days;
EmployeeDashboardModel copyWith({  String? attendance,
  String? recentLog,
  dynamic last7days,
}) => EmployeeDashboardModel(  attendance: attendance ?? _attendance,
  recentLog: recentLog ?? _recentLog,
  last7days: last7days ?? _last7days,
);
  String? get attendance => _attendance;
  String? get recentLog => _recentLog;
  dynamic get last7days => _last7days;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['attendance'] = _attendance;
    map['recentLog'] = _recentLog;
    map['last7days'] = _last7days;
    return map;
  }

}