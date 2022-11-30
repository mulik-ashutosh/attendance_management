import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../model/auth_models/auth_company_login_post_model.dart';
import '../../repository/company/company_network_handler.dart';

class CreateUserScreen extends StatefulWidget {
  final AuthCompanyLoginPostModel companyLoginPostModel;

  const CreateUserScreen({Key? key, required this.companyLoginPostModel})
      : super(key: key);

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cardIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //createUser();
  }

  void createUser() {
    // CompanyNetworkHandler().createEmployeePostDio(
    //   email: _emailController.text,
    //   cardId: _cardIdController.text,
    //   name: _nameController.text,
    //   role: _roleController.text,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: Text(
                        'Create User',
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
                      'Name',
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
                              'User Name',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xFFEBEBF5),
                              ),
                            ),
                            TextField(
                              controller: _nameController,
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
                              controller: _phoneController,
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
                              'CardID',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xFFEBEBF5),
                              ),
                            ),
                            TextField(
                              controller: _cardIdController,
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
                              'Role',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xFFEBEBF5),
                              ),
                            ),
                            TextField(
                              controller: _roleController,
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
                      CompanyNetworkHandler().companyCreateEmployee(
                        name: _nameController.text,
                        email: _emailController.text,
                        cardId: _cardIdController.text,
                        role: _roleController.text,
                        image: "",
                        mobile: _phoneController.text,
                        companyLoginPostModel: widget.companyLoginPostModel,
                      );
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Fluttertoast.showToast(
                        msg: "User Created Successfully",
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
                      child: Center(
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
