import 'package:attendance_management/screens/create_user_screen.dart';
import 'package:attendance_management/screens/edit_user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateEditUserScreen extends StatefulWidget {
  const CreateEditUserScreen({Key? key}) : super(key: key);

  @override
  State<CreateEditUserScreen> createState() => _CreateEditUserScreenState();
}

class _CreateEditUserScreenState extends State<CreateEditUserScreen> {
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditUserScreen()));
              },
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF26252C),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Center(
                  child: Text(
                    "Edit User Details",
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateUserScreen()));
              },
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF26252C),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Center(
                  child: Text(
                    "Create New User",
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
