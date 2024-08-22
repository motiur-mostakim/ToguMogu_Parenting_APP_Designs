// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:togumogu_parenting_app_designs/src/features/onbording_screen/presentation/child_information_screen.dart';
// import 'package:togumogu_parenting_app_designs/src/features/onbording_screen/presentation/complete_profile_screen.dart';
// import 'package:togumogu_parenting_app_designs/src/features/onbording_screen/presentation/onBording_curren_stage_screen.dart';
// import '../../../../core/widgets/button_widgets.dart';
//
// class MobileNumberVerifyScreens extends StatefulWidget {
//   const MobileNumberVerifyScreens({super.key});
//
//   @override
//   State<MobileNumberVerifyScreens> createState() =>
//       _MobileNumberVerifyScreensState();
// }
//
// class _MobileNumberVerifyScreensState extends State<MobileNumberVerifyScreens> {
//
//   PageController _pageController = PageController();
//   int _currentStep = 0;
//
//   void _onPageChanged(int index) {
//     setState(() {
//       _currentStep = index;
//     });
//   }
//
//   void _nextStep() {
//     if (_currentStep < 3) {
//       _pageController.animateToPage(_currentStep + 1,
//           duration: const Duration(milliseconds: 300), curve: Curves.ease);
//     }
//   }
//
//   // void _previousStep() {
//   //   if (_currentStep > 0) {
//   //     _pageController.animateToPage(_currentStep - 1,
//   //         duration: const Duration(milliseconds: 300), curve: Curves.ease);
//   //   }
//   // }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0XFFFFFFFF),
//       appBar: _currentStep == 0
//           ? AppBar(
//         backgroundColor: const Color(0XFFFFFFFF),
//       )
//           : null,
//       body: Padding(
//         padding: EdgeInsets.only(left: 16.w, right: 16.w),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//            _currentStep == 0 ? SizedBox(height: 0.h,) : SizedBox(height: 50.h,),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: AnimatedContainer(
//                 duration: const Duration(milliseconds: 300),
//                 height: 6,
//                 width: 365 * (_currentStep / 3),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF2F5596),
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: PageView(
//                 physics: const NeverScrollableScrollPhysics(),
//                 controller: _pageController,
//                 onPageChanged: _onPageChanged,
//                 children: [
//                   _varifyScreen(),
//                   CompleteProfileScreen(
//                     buttonFunc: _nextStep,
//                   ),
//                   CurrenStageScreen(
//                     buttonFunc: _nextStep,
//                   ),
//                   ChildInformationScreen(
//                     buttonFunc: _nextStep,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _pinPut(int index) {
//     return Container(
//       alignment: Alignment.center,
//       height: 48.h,
//       width: 55.w,
//       child: TextField(
//         onChanged: (value) {
//           if (value.length == 1) {
//             FocusScope.of(context).nextFocus();
//           }
//         },
//         keyboardType: TextInputType.number,
//         textAlign: TextAlign.center,
//         inputFormatters: [
//           LengthLimitingTextInputFormatter(1),
//           FilteringTextInputFormatter.digitsOnly,
//         ],
//         decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: const BorderSide(color: Color(0xFFD2D2D2)),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//             borderSide: const BorderSide(color: Colors.blue),
//           ),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8.r),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _varifyScreen(){
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           height: 30.h,
//         ),
//         Text(
//           "Phone number verification",
//           style: GoogleFonts.roboto(
//               fontSize: 17,
//               color: const Color(0xFF1C1C1C),
//               fontWeight: FontWeight.bold),
//         ),
//         SizedBox(
//           height: 8.h,
//         ),
//         const Text(
//           "Enter OTP code sent to 01737914492",
//           style: TextStyle(
//               fontSize: 14,
//               color: Color(0xFF1C1C1C),
//               fontWeight: FontWeight.w400),
//         ),
//         SizedBox(
//           height: 30.h,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             _pinPut(0),
//             SizedBox(
//               width: 24.w,
//             ),
//             _pinPut(1),
//             SizedBox(
//               width: 24.w,
//             ),
//             _pinPut(2),
//             SizedBox(
//               width: 24.w,
//             ),
//             _pinPut(3),
//           ],
//         ),
//         SizedBox(
//           height: 20.h,
//         ),
//         ButtonWidgets(
//           btnLeadingAssets: '',
//           btnFunc: () {
//             _nextStep();
//             // Navigator.push(
//             //     context,
//             //     MaterialPageRoute(
//             //         builder: (context) => const StepProgressIndicator()));
//           },
//           btnTextTile: "Continue",
//         ),
//         SizedBox(
//           height: 30.h,
//         ),
//         Text(
//           'Code Sent. Resend code in  01:32',
//           style: GoogleFonts.notoSerifBengali(
//               fontSize: 12,
//               color: const Color(0xFF1C1C1C),
//               fontWeight: FontWeight.w400),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:togumogu_parenting_app_designs/src/features/onbording_screen/presentation/child_information_screen.dart';
import 'package:togumogu_parenting_app_designs/src/features/onbording_screen/presentation/complete_profile_screen.dart';
import 'package:togumogu_parenting_app_designs/src/features/onbording_screen/presentation/onBording_curren_stage_screen.dart';
import '../../../../core/widgets/button_widgets.dart';
import '../../../onbording_screen/presentation/pregnancy_growth_screen.dart';

class MobileNumberVerifyScreens extends StatefulWidget {
  const MobileNumberVerifyScreens({super.key});

  @override
  State<MobileNumberVerifyScreens> createState() =>
      _MobileNumberVerifyScreensState();
}

class _MobileNumberVerifyScreensState extends State<MobileNumberVerifyScreens> {
  final PageController _pageController = PageController();
  int _currentStep = 0;
  String? _selectedOption;

  void _onPageChanged(int index) {
    setState(() {
      _currentStep = index;
    });
  }

  void _nextStep() {
    if (_currentStep < 3) {
      _pageController.animateToPage(_currentStep + 1,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  void _navigateToNextScreen() {
    if (_selectedOption == 'I am a parent') {
      _pageController.animateToPage(3,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
      setState(() {
        _currentStep = 3;
      });
    } else if (_selectedOption == 'We are expecting child') {
      _pageController.animateToPage(4,
          duration: const Duration(milliseconds: 300), curve: Curves.ease);

      setState(() {
        _currentStep = 4;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      appBar: _currentStep == 0
          ? AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
      )
          : null,
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _currentStep == 0
                ? SizedBox(
              height: 0.h,
            )
                : SizedBox(
              height: 50.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 6,
                width: 365 * (_currentStep / 3),
                decoration: BoxDecoration(
                  color: const Color(0xFF2F5596),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: _onPageChanged,
                children: [
                  _varifyScreen(),
                  CompleteProfileScreen(
                    buttonFunc: _nextStep,
                  ),
                  CurrenStageScreen(
                    buttonFunc: () {
                      _navigateToNextScreen();
                    },
                    onOptionSelected: (option) {
                      _selectedOption = option;
                    },
                  ),
                   ChildInformationScreen(
                     buttonFunc: _nextStep,
                   ),
                  PregnancyGrowthScreen(
                    buttonFunc: _nextStep,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _pinPut(int index) {
    return Container(
      alignment: Alignment.center,
      height: 48.h,
      width: 55.w,
      child: TextField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFD2D2D2)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }

  Widget _varifyScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.h,
        ),
        Text(
          "Phone number verification",
          style: GoogleFonts.roboto(
              fontSize: 17,
              color: const Color(0xFF1C1C1C),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8.h,
        ),
        const Text(
          "Enter OTP code sent to 01737914492",
          style: TextStyle(
              fontSize: 14,
              color: Color(0xFF1C1C1C),
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _pinPut(0),
            SizedBox(
              width: 24.w,
            ),
            _pinPut(1),
            SizedBox(
              width: 24.w,
            ),
            _pinPut(2),
            SizedBox(
              width: 24.w,
            ),
            _pinPut(3),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        ButtonWidgets(
          btnLeadingAssets: '',
          btnFunc: () {
            _nextStep();
          },
          btnTextTile: "Continue",
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          'Code Sent. Resend code in  01:32',
          style: GoogleFonts.notoSerifBengali(
              fontSize: 12,
              color: const Color(0xFF1C1C1C),
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
