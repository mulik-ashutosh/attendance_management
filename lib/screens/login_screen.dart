// ignore_for_file: use_build_context_synchronously
import 'package:attendance_management/screens/user/user_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../model/auth_models/auth_company_login_post_model.dart';
import '../model/auth_models/auth_employee_login_post_model.dart';
import '../model/auth_models/auth_organization_login_post_model.dart';
import '../repository/auth/auth_network_handler.dart';
import '../utils/enums.dart';
import 'company/company_home_screen.dart';
import 'organization/organization_home_screen.dart';

class LoginScreen extends StatefulWidget {
  final UserType userType;

  const LoginScreen({Key? key, required this.userType}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 120.h,
              ),
              Text(
                "For a personalized experience, login your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFfafafa),
                  fontFamily: "SFPro",
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 250.h,
              ),
              GestureDetector(
                onTap: () async {
                  if (widget.userType == UserType.Organization) {
                    AuthOrganizationLoginPostModel? authModel =
                        await orgSignIn();
                    if (authModel != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrganizationHomeScreen(
                            organizationLoginPostModel: authModel,
                          ),
                        ),
                      );
                    }
                  }

                  if (widget.userType == UserType.Company) {
                    AuthCompanyLoginPostModel? authCompanyModel =
                        await companySignIn();
                    if (authCompanyModel != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CompanyHomeScreen(
                                companyLoginPostModel: authCompanyModel)),
                      );
                    }
                  }

                  if (widget.userType == UserType.User) {
                    AuthEmployeeLoginPostModel? authUserModel =
                        await userSignIn();
                    if (authUserModel != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserHomeScreen(employeeLoginPostModel: authUserModel,),
                        ),
                      );
                    }
                  }

                  // if (await signInWithGoogle()) {
                  //   if (widget.userType == UserType.Organization) {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => const OrganizationHomeScreen()));
                  //   }
                  //   if (widget.userType == UserType.User) {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => const UserHomeScreen()));
                  //   }
                  //   if (widget.userType == UserType.Company) {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) => const CompanyHomeScreen()));
                  //   }
                  // }
                },
                child: Container(
                  width: ScreenUtil().screenWidth,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      const Text(
                        'Login with Google',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<AuthOrganizationLoginPostModel?> orgSignIn() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    if (widget.userType == UserType.Organization) {
      AuthOrganizationLoginPostModel? response =
          await AuthNetworkHandler().organizationLogin(
        email: "bhau@testy.com",
        idToken: googleAuth?.idToken ?? '',
      );

      GetStorage().write("org", response);

      if (response != null) {
        return response;
      }
    }

    return null;
  }

  Future<AuthCompanyLoginPostModel?> companySignIn() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    AuthCompanyLoginPostModel? response =
        await AuthNetworkHandler().companyLogin(
      email: "bhau@testy.com",
      idToken: googleAuth?.idToken ?? '',
    );

    GetStorage().write("company", response);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<AuthEmployeeLoginPostModel?> userSignIn() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    AuthEmployeeLoginPostModel? response =
        await AuthNetworkHandler().employeeLogin(
      email: "anand6@bi.com",
      idToken: googleAuth?.idToken ?? '',
    );

    GetStorage().write("employee", response);

    if (response != null) {
      return response;
    }

    return null;
  }
}
