import 'package:attendance_management/repository/organization/organization_network_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../model/auth_models/auth_organization_login_post_model.dart';

class CreateCompanyScreen extends StatefulWidget {
  final AuthOrganizationLoginPostModel organizationLoginPostModel;

  const CreateCompanyScreen(
      {Key? key, required this.organizationLoginPostModel})
      : super(key: key);

  @override
  State<CreateCompanyScreen> createState() => _CreateCompanyScreenState();
}

class _CreateCompanyScreenState extends State<CreateCompanyScreen> {
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Stack(
          children: [
            Positioned.fill(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: Text(
                        'Create Company',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "SFPro",
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    CircleAvatar(
                      backgroundColor: const Color(0xFF26252C),
                      radius: 60.r,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Organization Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "SFPro",
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF26252C),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Company Name',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xFFEBEBF5),
                              ),
                            ),
                            TextField(
                              controller: _companyNameController,
                              decoration: const InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                              ),
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize: 18.h,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF26252C),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xFFEBEBF5),
                              ),
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                              ),
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize: 18.h,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF26252C),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email Id',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xFFEBEBF5),
                              ),
                            ),
                            TextField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                              ),
                              cursorColor: Colors.white,
                              style: TextStyle(
                                fontSize: 18.h,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              bottom: 20.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      OrganizationNetworkHandler().createCompany(
                        name: _companyNameController.text,
                        email: _emailController.text,
                        token: widget.organizationLoginPostModel.tokens?.access
                                ?.token ??
                            "",
                      );
                      Navigator.pop(context);
                      Navigator.pop(context);
                      // Navigator.pop(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => OrganizationHomeScreen(
                      //               organizationLoginPostModel:
                      //                   widget.organizationLoginPostModel,
                      //             )));
                      Fluttertoast.showToast(
                          msg: "Company Created Successfully",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.grey,
                          textColor: Colors.white,
                          fontSize: 16.0,
                      );
                    },
                    child: Container(
                      width: 359,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color(0xFF0A84FF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
