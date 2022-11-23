import 'dart:convert';

import 'package:dio/dio.dart';
import '../../constants.dart';
import '../../models/auth_models/auth_company_login_model.dart';
import '../../models/auth_models/auth_organization_login_model.dart';
import '../../models/auth_models/auth_refresh_token_model.dart';
import '../../models/auth_models/auth_super_admin_login_model.dart';

class AuthNetworkHandler {
  final Dio dio = Dio();

  //auth Super admin login post method
  Future<AuthSuperAdminLoginModel?> superAdminPostDio(
      {required String email, required String idToken}) async {
    try {
      var response = await dio.post(
        '${Constants.baseUrl}/auth/login',
        data: {
          "email": email,
          "idToken": idToken,
        },
      );
      if (response.statusCode == 200) {
        return AuthSuperAdminLoginModel.fromJson(json.decode(response.data));
      }
      return null;
    } catch (e) {
      print(e);
    }
    return null;
  }

  //auth organization login post method
  Future<AuthOrganizationLoginModel?> organizationPostDio(
      {required String email, required String idToken}) async {
    try {
      var response = await dio.post('${Constants.baseUrl}/auth/login',
          data: {'email': email, 'idToken': idToken});
      if (response.statusCode == 200) {
        return AuthOrganizationLoginModel.fromJson(json.decode(response.data));
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  //auth company login post method
  Future<AuthCompanyLoginModel?> companyPostDio(
      {required String email, required String idToken}) async {
    try {
      var response = await dio.post('${Constants.baseUrl}/auth/login', data: {
        "email": email,
        "idToken": idToken,
      });
      if (response.statusCode == 200) {
        return AuthCompanyLoginModel.fromJson(json.decode(response.data));
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  //auth refresh token post method
  Future<AuthRefreshTokenModel?> refreshTokenPostDio(
      {required String refreshToken}) async {
    try {
      var response = await dio.post('${Constants.baseUrl}/auth/refresh-tokens',
          data: {'refreshToken': refreshToken});
      if (response.statusCode == 200) {
        return AuthRefreshTokenModel.fromJson(json.decode(response.data));
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
