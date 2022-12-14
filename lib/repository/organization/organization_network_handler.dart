import 'package:dio/dio.dart';
import '../../constants.dart';
import '../../model/organization_models/organization_companies_get_model.dart';
import '../../model/organization_models/organization_create_company_post_model.dart';
import '../../model/organization_models/organization_dashboard_model.dart';

class OrganizationNetworkHandler {
  final Dio dio = Dio();

  //organization get companies method
  Future<OrganizationCompaniesGetModel?> getCompanies() async {
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
    return null;
  }

  //organization create company post method
  Future<OrganizationCreateCompanyPostModel?> createCompany({
    required String name,
    required String email,
    required String token,
  }) async {
    var response = await dio.post(
      '${Constants.baseUrl}/companies',
      data: {'name': name, "email": email},
      options: Options(
        headers: {"Authorization": "Bearer ${token ?? ''}"},
      ),
    );
    if (response.statusCode == 200) {
      return OrganizationCreateCompanyPostModel.fromJson(response.data);
    }
    return null;
  }

  // Get organization Dashboard
  Future<OrganizationDashboardModel?> getDashboard({
    required String token,
  }) async {
    var response = await dio.get(
      '${Constants.baseUrl}/organizations/dashboard',
      options: Options(
        headers: {"Authorization": "Bearer ${token ?? ''}"},
      ),
    );

    if (response.statusCode == 200) {
      OrganizationDashboardModel model =
          OrganizationDashboardModel.fromJson(response.data);
      return model;
    }
    return null;
  }
}
