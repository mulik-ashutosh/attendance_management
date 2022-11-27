import 'dart:convert';

import 'package:dio/dio.dart';
import '../../constants.dart';
import '../../model/auth_models/auth_company_login_post_model.dart';
import '../../model/auth_models/auth_employee_login_post_model.dart';
import '../../model/auth_models/auth_organization_login_post_model.dart';
import '../../model/auth_models/auth_super_admin_login_post_model.dart';

class AuthNetworkHandler {
  final Dio dio = Dio();

  //auth employee login post method
  Future<AuthEmployeeLoginPostModel?> employeePostDio({required String email, required String idToken}) async {
    try {
      var response = await dio.post(
        '${Constants.baseUrl}/auth/login',
        data: {
          "email": email,
          "idToken": idToken,
        },
      );
      if (response.statusCode == 200) {
        return AuthEmployeeLoginPostModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  //auth organization login post method
  Future<AuthOrganizationLoginPostModel?> organizationLogin({required String email, required String idToken}) async {
    try {
      var response = await dio.post(
        '${Constants.baseUrl}/auth/login',
        data: {'email': email, 'idToken': idToken},
      );
      if (response.statusCode == 200) {
        return AuthOrganizationLoginPostModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  //
  // //auth company login post method
  Future<AuthCompanyLoginPostModel?> companyPostDio({required String email, required String idToken}) async {
    try {
      var response = await dio.post('${Constants.baseUrl}/auth/login', data: {
        "email": email,
        "idToken": idToken,
      });
      if (response.statusCode == 200) {
        return AuthCompanyLoginPostModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  //auth refresh token post method
  // Future<AuthRefreshTokenModel?> refreshTokenPostDio(
  //     {required String refreshToken}) async {
  //   try {
  //     var response = await dio.post('${Constants.baseUrl}/auth/refresh-tokens',
  //         data: {'refreshToken': refreshToken});
  //     if (response.statusCode == 200) {
  //       return AuthRefreshTokenModel.fromJson(response.data);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  //   return null;
  // }
}
