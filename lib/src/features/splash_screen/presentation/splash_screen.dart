import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:togumogu_parenting_app_designs/src/features/onbording_screen/presentation/onbording_screen.dart';
import '../../authentication/mobile_number_verify_screen/presentation/mobile_number_verify_screens.dart';

class SplashScreen extends StatelessWidget {
  final int? currentStep;
  const SplashScreen({super.key, this.currentStep});

  @override
  Widget build(BuildContext context) {
    // Delay navigation to the next screen
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 4), () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  const OnBordingScreen(

                )));
      });
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/ToguMogu New Logo 1.png',
          height: 157.6.h,
          width: 130.w,
        ),
      ),
    );
  }
}
