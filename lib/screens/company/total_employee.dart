import 'package:attendance_management/model/company_models/company_employee_get_model.dart';
import 'package:attendance_management/repository/organization/organization_network_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/auth_models/auth_company_login_post_model.dart';
import '../../model/organization_models/organization_dashboard_model.dart';
import '../../repository/company/company_network_handler.dart';

class TotalEmployeeScreen extends StatefulWidget {
  AuthCompanyLoginPostModel companyLoginPostModel;
  TotalEmployeeScreen({Key? key, required this.companyLoginPostModel}) : super(key: key);

  @override
  State<TotalEmployeeScreen> createState() => _TotalEmployeeScreenState();
}

class _TotalEmployeeScreenState extends State<TotalEmployeeScreen> {
  AuthCompanyLoginPostModel? companyLoginPostModel;
  CompanyEmployeeGetModel? employeeData;
  
  @override
  void initState() {
    companyLoginPostModel = widget.companyLoginPostModel;
    super.initState();
    getEmployee();
  }
  
  void getEmployee() async {
    employeeData = (await CompanyNetworkHandler().getEmployee(token: widget.companyLoginPostModel.tokens?.access?.token ?? ""))!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Total Employee"),
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(
          fontSize: 25.sp,
          fontFamily: "SFPro",
        ),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: employeeData?.results?.length ?? 0,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              height: 80.h,
              decoration: BoxDecoration(
                color: const Color(0xFF26252C),
                borderRadius: BorderRadius.circular(10.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50.w,
                    height: 40.h,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        employeeData?.results?[index].name ?? "",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontFamily: "SFPro",
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                          employeeData?.results?[index].role ?? "",
                        style: TextStyle(
                          color: Color(0xFF929194),
                          fontFamily: "SFPro",
                        ),
                      ),
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.circle_rounded,
                  //           size: 5,
                  //           color: Color(0xFF36995E),
                  //         ),
                  //         SizedBox(
                  //           width: 5,
                  //         ),
                  //         Text(
                  //           '000126',
                  //           style: TextStyle(
                  //             color: Color(0xFFEBEBF5),
                  //             fontFamily: "SFPro",
                  //           ),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 15.h,
          );
        },
      ),
    );
  }
}
