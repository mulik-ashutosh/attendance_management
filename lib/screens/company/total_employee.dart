import 'package:attendance_management/repository/employee/employee_network_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../model/auth_models/auth_company_login_post_model.dart';
import '../../model/employee_models/company_get_employee_model.dart';

class TotalEmployeeScreen extends StatefulWidget {
  AuthCompanyLoginPostModel companyLoginPostModel;
  TotalEmployeeScreen({Key? key, required this.companyLoginPostModel}) : super(key: key);

  @override
  State<TotalEmployeeScreen> createState() => _TotalEmployeeScreenState();
}

class _TotalEmployeeScreenState extends State<TotalEmployeeScreen> {
  AuthCompanyLoginPostModel? companyLoginPostModel;
  CompanyGetEmployeeModel? employeeData;
  
  @override
  void initState() {
    companyLoginPostModel = widget.companyLoginPostModel;
    super.initState();
    getEmployee();
  }
  
  void getEmployee() async {
    employeeData = (await EmployeeNetworkHandler().getEmployee(token: widget.companyLoginPostModel.tokens?.access?.token ?? ""))!;
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
        itemCount: 10,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50.w,
                    height: 40.h,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        employeeData?.results?[0].name.toString() ?? "",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontFamily: "SFPro",
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const Text(
                        'Manager',
                        style: TextStyle(
                          color: Color(0xFF929194),
                          fontFamily: "SFPro",
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.circle_rounded,
                            size: 5,
                            color: Color(0xFF36995E),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '000126',
                            style: TextStyle(
                              color: Color(0xFFEBEBF5),
                              fontFamily: "SFPro",
                            ),
                          ),
                        ],
                      )
                    ],
                  )
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
