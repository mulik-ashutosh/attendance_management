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
      var response = await dio.get('${Constants.baseUrl}/companies');
      if (response.statusCode == 200) {
        OrganizationCompaniesGetModel model =
            OrganizationCompaniesGetModel.fromJson(response.data);
        return model;
      }
    } catch (e) {
      print(e);
    }
  }

  //organization create company post method
  Future<OrganizationCreateCompaniesPostModel?> postDio(
      {required String name, required String email}) async {
    try {
      var response = await dio.post('${Constants.baseUrl}/companies',
          data: {'name': name, "email": email});
      if (response.statusCode == 200) {
        return OrganizationCreateCompaniesPostModel.fromJson(
            json.decode(response.data));
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
