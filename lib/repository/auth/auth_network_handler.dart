import 'package:dio/dio.dart';
import '../../constants.dart';

class AuthNetworkHandler {
  final Dio dio = Dio();

  //Super admin login post method
  void postDio() async {
    try {
      var response = await dio.post(Constants.baseUrl + '/auth/login', data: 'BI');
      print(response.data);
      print(response.statusCode);
    } catch (e) {
      print(e);
    }
  }
}
