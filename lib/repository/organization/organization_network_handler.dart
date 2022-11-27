import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import '../../constants.dart';
import '../../model/auth_models/auth_organization_login_post_model.dart';
import '../../model/organization_models/organization_companies_get_model.dart';
import '../../model/organization_models/organization_create_company_post_model.dart';

class OrganizationNetworkHandler {
  final Dio dio = Dio();

  //organization get companies method
  Future<OrganizationCompaniesGetModel?> getCompanies() async {
    try {
      var response = await dio.get('${Constants.baseUrl}/companies');
      if (response.statusCode == 200) {
        OrganizationCompaniesGetModel model = OrganizationCompaniesGetModel.fromJson(response.data);
        return model;
      }
    } catch (e) {
      print(e);
    }
  }

  //organization create company post method
  Future<OrganizationCreateCompanyPostModel?> createCompany({
    required String name,
    required String email,
    required AuthOrganizationLoginPostModel? organizationLoginPostModel,
  }) async {
    var response = await dio.post(
      '${Constants.baseUrl}/companies',
      data: {'name': name, "email": email},
      options: Options(
        headers: {"Authorization": "Bearer ${organizationLoginPostModel?.tokens?.access?.token ?? ''}"},
      ),
    );
    if (response.statusCode == 200) {
      print("Success");
      return OrganizationCreateCompanyPostModel.fromJson(response.data);
    }
    return null;
  }
}
