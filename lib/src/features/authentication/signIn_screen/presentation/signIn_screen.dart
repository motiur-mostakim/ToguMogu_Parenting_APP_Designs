import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/button_widgets.dart';
import '../../../../core/widgets/text_field_widget.dart';
import '../../mobile_number_verify_screen/presentation/mobile_number_verify_screens.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  String _signUpText = "Sign up using phone number";
  String _continueButtonText = "Continue with Email";
  String _signUpHintText = '01XXXXXXXXXX';
  IconData _signUpIcon = Icons.call;
  String _continueButtonImage = 'assets/images/email.png';

  void _toggleSignUpAndContinueButtons() {
    setState(() {
      if (_signUpText == "Sign up using phone number") {
        // Switch to email sign up
        _signUpText = "Sign up using email";
        _signUpHintText = 'xyz@gmail.com';
        _signUpIcon = Icons.email;
        _continueButtonText = "Continue with Phone Number";
        _continueButtonImage = 'assets/images/phone.png';
      } else {
        // Switch to phone number sign up
        _signUpText = "Sign up using phone number";
        _signUpHintText = '01XXXXXXXXXX';
        _signUpIcon = Icons.call;
        _continueButtonText = "Continue with Email";
        _continueButtonImage = 'assets/images/email.png';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0XFFFFFFFF),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                _signUpText,
                style: const TextStyle(
                    fontSize: 17,
                    color: Color(0xFF1C1C1C),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 8.h,
              ),
              const Text(
                "Let’s create a new ToguMogu account",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF1C1C1C),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 30.h,
              ),
              TextFieldWidget(
                hintTextTile: _signUpHintText,
                childs: Icon(_signUpIcon),
                lableTextTile: _signUpHintText,
                prefixIconWidget: null,
              ),
              SizedBox(
                height: 20.h,
              ),
              ButtonWidgets(
                btnLeadingAssets: '',
                btnFunc: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const MobileNumberVerifyScreens()));
                },
                btnTextTile: "Continue",
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 143.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5.w, color: const Color(0xFFE8DDDD))),
                  ),
                  Text(
                    "or",
                    style: TextStyle(
                      color: const Color(0xFF6A6A6A),
                      fontSize: 10.sp,
                    ),
                  ),
                  Container(
                    width: 143.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5.w, color: const Color(0xFFE8DDDD))),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              ButtonWidgets(
                btnFunc: () {},
                btnTextTile: "Continue with Google",
                btnLeadingAssets: 'assets/images/google_icon.jpeg',
              ),
              SizedBox(
                height: 16.h,
              ),
              ButtonWidgets(
                btnFunc: () {},
                btnTextTile: "Continue with Facebook",
                btnLeadingAssets: 'assets/images/facebook.png',
              ),
              SizedBox(
                height: 16.h,
              ),
              ButtonWidgets(
                btnFunc: _toggleSignUpAndContinueButtons,
                btnTextTile: _continueButtonText,
                btnLeadingAssets: _continueButtonImage,
              ),
              SizedBox(
                height: 170.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'By tapping continue you agree to',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF6A6A6A),
                      fontSize: 10.sp,
                    ),
                  ),
                  Text(
                    ' Terms and Conditions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF2F5596),
                      fontSize: 10.sp,
                    ),
                  ),
                  Text(
                    '  and',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF6A6A6A),
                      fontSize: 10.sp,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Privacy Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF2F5596),
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    '  of ToguMogu',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF6A6A6A),
                      fontSize: 10.sp,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
