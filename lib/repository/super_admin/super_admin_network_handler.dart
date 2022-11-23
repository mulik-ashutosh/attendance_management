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
      var response = await dio.get('${Constants.baseUrl}/organizations');
      if (response.statusCode == 200) {
        SuperAdminOrganizationGetModel model =
            SuperAdminOrganizationGetModel.fromJson(response.data);
        return model;
      }
    } catch (e) {
      print(e);
    }
  }

  //Super admin login post method
  Future<SuperAdminCreateOrganizationPostModel?> postDio(
      {required String name, required String email}) async {
    try {
      var response = await dio.post('${Constants.baseUrl}/organizations',
          data: {'name': name, 'email': email});
      if (response.statusCode == 200) {
        return SuperAdminCreateOrganizationPostModel.fromJson(
            json.decode(response.data));
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
