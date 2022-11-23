import 'package:attendance_management/screens/create_user_screen.dart';
import 'package:attendance_management/screens/edit_user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'create_organization_screen.dart';
import 'edit_organization_screen.dart';

class CreateEditOrganizationScreen extends StatefulWidget {
  const CreateEditOrganizationScreen({Key? key}) : super(key: key);

  @override
  State<CreateEditOrganizationScreen> createState() => _CreateEditOrganizationScreenState();
}

class _CreateEditOrganizationScreenState extends State<CreateEditOrganizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const EditOrganizationScreen()));
              },
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF26252C),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Center(
                  child: Text(
                    "Edit Organization Details",
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
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateOrganizationScreen()));
              },
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF26252C),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Center(
                  child: Text(
                    "Create New Organization",
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
    );
  }
}
