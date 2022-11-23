import 'package:attendance_management/screens/edit_user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../create_edit_user_screen.dart';

class SuperAdminHomeScreen extends StatefulWidget {
  const SuperAdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<SuperAdminHomeScreen> createState() => _SuperAdminHomeScreenState();
}

class _SuperAdminHomeScreenState extends State<SuperAdminHomeScreen> {
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
                  color: Color(0xFF26252C),
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
                          "Sahil",
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
                          "Manager",
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
                    height: 225.h,
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
                          "09:20",
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
                        Container(
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
                                "256",
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
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditUserScreen(),
                              ),
                            );
                          },
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
                                  "256",
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateEditUserScreen()));
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
                      "Create / Edit a user",
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
