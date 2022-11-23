import 'package:attendance_management/models/auth_models/auth_super_admin_login_model.dart';
import 'package:attendance_management/screens/office/admin_home_screen.dart';
import 'package:attendance_management/screens/super_admin/super_admin_home_screen.dart';
import 'package:attendance_management/screens/user_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../models/auth_models/auth_company_login_model.dart';
import '../models/auth_models/auth_organization_login_model.dart';
import '../repository/auth/auth_network_handler.dart';
import 'main_screen.dart';

// ignore: constant_identifier_names
//enum UserType { SuperAdmin, Admin, User }

class LoginScreen2 extends StatefulWidget {
  //final UserType userType;

  const LoginScreen2({Key? key, /*required this.userType*/}) : super(key: key);

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const UserHomeScreen()));
                  // if (await signInWithGoogle()) {
                  //   if (widget.userType == UserType.SuperAdmin) {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) =>
                  //                 const SuperAdminHomeScreen()));
                  //   }
                  //   if (widget.userType == UserType.User) {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const UserHomeScreen()));
                  //   }
                  //   if (widget.userType == UserType.Admin) {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => const AdminHomeScreen()));
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
                      Text(
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

  // Future<bool> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;
  //
  //   if (widget.userType == UserType.SuperAdmin) {
  //     AuthSuperAdminLoginModel? response = await AuthNetworkHandler()
  //         .superAdminPostDio(
  //             email: googleUser?.email ?? '',
  //             idToken: googleAuth?.idToken ?? '');
  //     if (response != null) {
  //       return true;
  //     }
  //   }
  //
  //   if (widget.userType == UserType.User) {
  //     AuthCompanyLoginModel? response = await AuthNetworkHandler()
  //         .companyPostDio(
  //             email: googleUser?.email ?? '',
  //             idToken: googleAuth?.idToken ?? '');
  //     if (response != null) {
  //       return true;
  //     }
  //   }
  //
  //   if (widget.userType == UserType.Admin) {
  //     AuthOrganizationLoginModel? response =
  //         await AuthNetworkHandler().organizationPostDio(
  //       email: googleUser?.email ?? '',
  //       idToken: googleAuth?.idToken ?? '',
  //     );
  //     if (response != null) {
  //       return true;
  //     }
  //   }
  //
  //   return false;
  //
  // }
}
