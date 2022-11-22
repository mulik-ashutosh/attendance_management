import 'dart:convert';

import 'package:dio/dio.dart';

import '../../constants.dart';
import '../../models/company_models/company_create_employee_post_model.dart';
import '../../models/company_models/company_employee_get_model.dart';

class AuthNetworkHandler {
  final Dio dio = Dio();

  //company employee get method
  Future<CompanyEmployeeGetModel?> getDio() async {
    try {
      var response = await dio.get(Constants.baseUrl + '/employees');
      CompanyEmployeeGetModel _model = CompanyEmployeeGetModel.fromJson(response.data);
      return _model;
    } catch (e) {
      print(e);
    }
  }
  //company employee post method
  Future<CompanyCreateEmployeePostModel?> createEmployeePostDio() async {
    try {
      var response = await dio.post(Constants.baseUrl + '/employees', data: '');
      return CompanyCreateEmployeePostModel.fromJson(json.decode(response.data));
    } catch (e) {
      print(e);
    }
  }
  //company scan card post method
  // Future<CompanyScanCardPostModel?> scanCardPostDio() async {
  //   try {
  //     var response = await dio.post(Constants.baseUrl + '/employees/scan', data: '');
  //     return CompanyScanCardPostModel.fromJson(json.decode(response.data));
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}
