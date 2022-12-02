import 'package:attendance_management/screens/company/total_employee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/auth_models/auth_organization_login_post_model.dart';
import '../../model/organization_models/organization_companies_get_model.dart';
import '../../model/organization_models/organization_dashboard_model.dart';
import '../../repository/organization/organization_network_handler.dart';
import '../company/todays_log.dart';
import 'create_edit_company_screen.dart';

class OrganizationHomeScreen extends StatefulWidget {
  final AuthOrganizationLoginPostModel organizationLoginPostModel;
  const OrganizationHomeScreen({Key? key, required this.organizationLoginPostModel}) : super(key: key);

  @override
  State<OrganizationHomeScreen> createState() => _OrganizationHomeScreenState();
}

class _OrganizationHomeScreenState extends State<OrganizationHomeScreen> {
  OrganizationCompaniesGetModel? organizationCompaniesGetModel;
  AuthOrganizationLoginPostModel? organizationLoginPostModel;
  OrganizationDashboardModel? dashboardData;


  @override
  void initState() {
    organizationLoginPostModel = widget.organizationLoginPostModel;
    super.initState();
    getDashboard();
    setState(() {

    });
  }

  void getDashboard() async {
    dashboardData = (await OrganizationNetworkHandler().getDashboard(token: widget.organizationLoginPostModel.tokens?.access?.token ?? ""))!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.w,
            vertical: 25.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome,",
                style: TextStyle(
                  color: const Color(0xFFfafafa),
                  fontFamily: "SFPro",
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 250.h,
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  color: const Color(0xFF26252C),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35.r,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Blockchain Internationale",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SFPro",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Name : ",
                          style: TextStyle(
                            color: const Color(0xFF979797),
                            fontFamily: "SFPro",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          organizationLoginPostModel?.employee?.name ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SFPro",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Designation : ",
                          style: TextStyle(
                            color: const Color(0xFF979797),
                            fontFamily: "SFPro",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          organizationLoginPostModel?.employee?.role ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SFPro",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Recent Activity",
                style: TextStyle(
                  color: const Color(0xFFfafafa),
                  fontFamily: "SFPro",
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    height: 229.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFF26252C),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Entered Today",
                          style: TextStyle(
                            color: const Color(0xFF979797),
                            fontFamily: "SFPro",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          dashboardData?.todayEntered.toString() ?? "",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "SFPro",
                            fontSize: 52.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => TotalEmployeeScreen(),
                          //     ),
                          //   );
                          // },
                          child: Container(
                            height: 102.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFF26252C),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 20.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Employee",
                                  style: TextStyle(
                                    color: const Color(0xFF979797),
                                    fontFamily: "SFPro",
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  dashboardData?.totalEmployees.toString() ?? "0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SFPro",
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 102.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFF26252C),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 20.h,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Companies",
                                  style: TextStyle(
                                    color: const Color(0xFF979797),
                                    fontFamily: "SFPro",
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  dashboardData?.totalCompanies.toString() ?? "0",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "SFPro",
                                    fontSize: 28.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateEditCompanyScreen(
                        organizationLoginPostModel: widget.organizationLoginPostModel,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 102.h,
                  width: ScreenUtil().screenWidth,
                  decoration: BoxDecoration(
                    color: const Color(0xFF26252C),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  child: Center(
                    child: Text(
                      "Create / Edit a Company",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SFPro",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
