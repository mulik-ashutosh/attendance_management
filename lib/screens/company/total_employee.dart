import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../repository/company/company_network_handler.dart';
import 'create_edit_user_screen.dart';

class TotalEmployeeScreen extends StatefulWidget {
  const TotalEmployeeScreen({Key? key}) : super(key: key);

  @override
  State<TotalEmployeeScreen> createState() => _TotalEmployeeScreenState();
}

class _TotalEmployeeScreenState extends State<TotalEmployeeScreen> {

  //CompanyEmployeeGetModel? user;

  @override
  void initState() {
    super.initState();
    //getUsers();
  }

  // void getUsers() async {
  //   var user = (await CompanyNetworkHandler().getDio());
  // }

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
                        'Manish Gupta',
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
