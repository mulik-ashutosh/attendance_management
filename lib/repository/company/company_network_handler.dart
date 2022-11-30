import 'package:attendance_management/model/auth_models/auth_company_login_post_model.dart';
import 'package:dio/dio.dart';
import '../../constants.dart';
import '../../model/company_models/company_create_employee_model.dart';

class CompanyNetworkHandler {
  final Dio dio = Dio();

  //company employee get method
  // Future<CompanyEmployeeGetModel?> getDio() async {
  //   try {
  //     var response = await dio.get('${Constants.baseUrl}/employees');
  //     if (response.statusCode == 200) {
  //       CompanyEmployeeGetModel model =
  //           CompanyEmployeeGetModel.fromJson(response.data);
  //       return model;
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  //company Create employee post method
  Future<CompanyCreateEmployeeModel?> companyCreateEmployee({
    required String email,
    required String cardId,
    required String name,
    required String role,
    required String image,
    required String mobile,
    required AuthCompanyLoginPostModel? companyLoginPostModel,
  }) async {
    try {
      var response = await dio.post('${Constants.baseUrl}/employees',
          data: {
            'email': email,
            'cardId': cardId,
            'name': name,
            'role': role,
            'image': image,
            'mobile': mobile,
          },
          options: Options(
            headers: {
              "Authorization":
                  "Bearer ${companyLoginPostModel?.tokens?.access?.token ?? ""}"
            },
          ));
      if (response.statusCode == 200) {
        return CompanyCreateEmployeeModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
// company scan card post method
// Future<CompanyScanCardPostModel?> scanCardPostDio() async {
//   try {
//     var response = await dio.post(Constants.baseUrl + '/employees/scan', data: '');
//     if(response.statusCode == 200) {
//       return CompanyScanCardPostModel.fromJson(json.decode(response.data));
//     }
//   } catch (e) {
//     print(e);
//   }
// }
}
