import 'dart:convert';

import 'package:dio/dio.dart';

import '../../constants.dart';
import '../../models/organization_models/organization_companies_get_model.dart';
import '../../models/organization_models/organization_create_companies_post_model.dart';

class AuthNetworkHandler {
  final Dio dio = Dio();

  //organization get companies method
  Future<OrganizationCompaniesGetModel?> getDio() async {
    try {
      var response = await dio.get(Constants.baseUrl + '/companies');
      OrganizationCompaniesGetModel _model = OrganizationCompaniesGetModel.fromJson(response.data);
      return _model;
    } catch (e) {
      print(e);
    }
  }
  //organization create company post method
  Future<OrganizationCreateCompaniesPostModel?> postDio() async {
    try {
      var response = await dio.post(Constants.baseUrl + '/companies', data: '');
      return OrganizationCreateCompaniesPostModel.fromJson(json.decode(response.data));
    } catch (e) {
      print(e);
    }
  }
}