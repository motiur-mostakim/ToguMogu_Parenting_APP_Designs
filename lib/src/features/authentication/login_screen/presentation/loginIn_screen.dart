import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:togumogu_parenting_app_designs/src/core/widgets/text_field_widget.dart';
import '../../../../core/widgets/button_widgets.dart';

class LoginInScreen extends StatefulWidget {
  const LoginInScreen({super.key});

  @override
  State<LoginInScreen> createState() => _LoginInScreenState();
}

class _LoginInScreenState extends State<LoginInScreen> {

  String _loginText = "Log in using phone number";
  String _continueButtonText = "Continue with Email";
  String _loginHintText = '01XXXXXXXXXX';
  IconData _loginIcon = Icons.call;
  String _continueButtonImage = 'assets/images/email.png';

  void _toggleLoginAndContinueButtons() {
    setState(() {
      if (_loginText == "Log in using phone number") {
        // Switch to email sign up
        _loginText = "Log in using email";
        _loginHintText = 'xyz@gmail.com';
        _loginIcon = Icons.email;
        _continueButtonText = "Continue with Phone Number";
        _continueButtonImage = 'assets/images/phone.png';
      } else {
        // Switch to phone number sign up
        _loginText = "Log in using phone number";
        _loginHintText = '01XXXXXXXXXX';
        _loginIcon = Icons.call;
        _continueButtonText = "Continue with Email";
        _continueButtonImage = 'assets/images/email.png';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w,right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h,),
              Text(
                _loginText,
                style: const TextStyle(
                    fontSize: 17,
                    color: Color(0xFF1C1C1C),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 8.h,),
              const Text(
                "Log in into your ToguMogu account",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF1C1C1C),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30.h,),
              TextFieldWidget(
                hintTextTile: _loginHintText,
                childs: Icon(_loginIcon),
                lableTextTile: null,
                suffixIconWidget: null,
              ),
              SizedBox(
                height: 20.h,
              ),
              ButtonWidgets(
                colors: const Color(0xFF2F5596),
                textColors: const Color(0xFFFFFFFF),
                btnLeadingAssets: '',
                btnFunc: (){},
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
                        border:
                        Border.all(width: 0.5.w, color: const Color(0xFFE8DDDD))),
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
                        border:
                        Border.all(width: 0.5.w, color: const Color(0xFFE8DDDD))),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              ButtonWidgets(
                colors: const Color(0xFFFFFFFF),
                btnFunc: (){},
                btnTextTile: "Continue with Google",
                btnLeadingAssets: 'assets/images/google_icon.jpeg',
              ),
              SizedBox(
                height: 16.h,
              ),
              ButtonWidgets(
                colors: const Color(0xFFFFFFFF),
                btnFunc: (){},
                btnTextTile: "Continue with Facebook",
                btnLeadingAssets: 'assets/images/facebook.png',
              ),
              SizedBox(
                height: 16.h,
              ),
              ButtonWidgets(
                colors: const Color(0xFFFFFFFF),
                btnFunc: _toggleLoginAndContinueButtons,
                btnTextTile: _continueButtonText,
                btnLeadingAssets: _continueButtonImage,
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
