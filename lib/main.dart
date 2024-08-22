import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/features/splash_screen/presentation/splash_screen.dart';


void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(360, 800),
      minTextAdapt: true,
    );
    return MaterialApp(
      theme: ThemeData(
          primaryColor: const Color(0xFFFFFFFF)
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
