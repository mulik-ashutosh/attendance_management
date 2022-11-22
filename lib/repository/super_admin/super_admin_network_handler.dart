import 'dart:convert';

import 'package:dio/dio.dart';
import '../../constants.dart';
import '../../models/super_admin_models/super_admin_create_organization_post_model.dart';
import '../../models/super_admin_models/super_admin_organization_get_model.dart';

class AuthNetworkHandler {
  final Dio dio = Dio();

  //Super admin login get method
  Future<SuperAdminOrganizationGetModel?> getDio() async {
    try {
      var response = await dio.get(Constants.baseUrl + '/organizations');
      SuperAdminOrganizationGetModel _model = SuperAdminOrganizationGetModel.fromJson(response.data);
      // print(response.data);
      // print(response.statusCode);
      return _model;
    } catch (e) {
      print(e);
    }
  }
  //Super admin login post method
  Future<SuperAdminCreateOrganizationPostModel?> postDio() async {
    try {
      var response = await dio.post(Constants.baseUrl + '/organizations', data: '');
      return SuperAdminCreateOrganizationPostModel.fromJson(json.decode(response.data));
      // print(response.data);
      // print(response.statusCode);
    } catch (e) {
      print(e);
    }
  }
}


