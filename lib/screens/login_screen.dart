import 'package:attendance_management/screens/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 120.h,
              ),
              Text(
                "For a personalized experience, login your account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFfafafa),
                  fontFamily: "SFPro",
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 250.h,
              ),
              GestureDetector(
                onTap: () async {
                  await signInWithGoogle();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()));
                },
                child: Container(
                  width: ScreenUtil().screenWidth,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Login with Google',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
