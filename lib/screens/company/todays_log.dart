import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'create_edit_user_screen.dart';

class TodayLogScreen extends StatefulWidget {
  const TodayLogScreen({Key? key}) : super(key: key);

  @override
  State<TodayLogScreen> createState() => _TodayLogScreenState();
}

class _TodayLogScreenState extends State<TodayLogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Today logs"),
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreateEditUserScreen(),
                ),
              );
            },
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
                        'Mon 01 May',
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
                        'Blockchain Internationale',
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
                            '09:10 AM',
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
