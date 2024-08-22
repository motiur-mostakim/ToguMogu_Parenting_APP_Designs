import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:togumogu_parenting_app_designs/src/core/widgets/button_widgets.dart';
import '../../authentication/login_screen/presentation/loginIn_screen.dart';
import '../../authentication/signIn_screen/presentation/signIn_screen.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  int _currentIndex = 0;
  late PageController _pageController;

  final List<String> carouselTexts = [
    "শিশুর গ্রোথ ট্রেকিং করুন",
    "নির্ভরযোগ্য কেনাকাটার অভিজ্ঞতা",
    "শিশুর প্রয়োজনীয় স্থানটি খুঁজে নিন",
    "অন্যান প্যারেন্টিং সার্ভিস",
  ];

  final List<String> carouselSubTexts = [
    "শিশুর শারীরিক ও মানসিক উন্নয়ন সম্পর্কিত পরামর্শ \n দেখুন গ্রোথ ট্র্যাকিং ফিচারে",
    "মা বাবা ও শিশুর জন্য পণ্য, বয়স উপযোগী বই, \n খেলনা এবং ষ্টেশনারী আইটেম",
    "প্রয়োজন অনুযায়ী আপনার বাচ্চাদের জন্যে, ডে কেয়ার, \n কিন্ডারগার্টেন, স্কুল বা বিনোদন স্থানগুলি খুজুন ",
    "প্যারেন্টিং গাইড, বেবিসিটার খুঁজে পাওয়া সহ শিশু ও \n পিতামাতার জন্য আরো অনেক  সার্ভিস থাকছে \n আমাদের অ্যাপে",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  bool isBangla = true;

  void toggleLanguage() {
    setState(() {
      isBangla = !isBangla;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Container(
                margin: isBangla
                    ? EdgeInsets.only(top: 60.h, left: 275.w)
                    : EdgeInsets.only(top: 60.h, left: 265.w),
                alignment: Alignment.center,
                height: 32.h,
                width: isBangla ? 70.w : 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border:
                      Border.all(width: 1.w, color: const Color(0xFFD2D2D2)),
                ),
                child: TextButton(
                  onPressed: toggleLanguage,
                  // Handle the tap event to toggle language
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/image 309.png",
                        height: 12.h,
                        width: 12.w,
                      ),
                      SizedBox(width: 6.w),
                      Text(
                        isBangla ? "বাংলা" : "English",
                        textAlign: TextAlign.center,
                        style: isBangla
                            ? GoogleFonts.notoSerifBengali(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF1C1C1C))
                            : GoogleFonts.roboto(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF1C1C1C)),
                      ),
                    ],
                  ),
                ),
              )),
          SizedBox(height: 50.h),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 203.h,
                  width: double.infinity,
                  color: const Color(0xFFFFFFFF),
                  child: CarouselSlider(
                    items: [
                      Image.asset(
                        'assets/images/Group.png',
                        height: 205.h,
                        width: 263.w,
                      ),
                      Image.asset(
                        'assets/images/Group (1).png',
                        height: 205.h,
                        width: 263.w,
                      ),
                      Image.asset(
                        'assets/images/Group (2).png',
                        height: 205.h,
                        width: 263.w,
                      ),
                      Image.asset(
                        'assets/images/Group (3).png',
                        height: 205.h,
                        width: 263.w,
                      ),
                    ],
                    options: CarouselOptions(
                      initialPage: 0,
                      autoPlayInterval: const Duration(milliseconds: 3500),
                      autoPlay: true,
                      enlargeCenterPage: true,
                      height: 300.h,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  carouselTexts[_currentIndex],
                  style: GoogleFonts.notoSerifBengali(
                      fontSize: 18.sp,
                      color: const Color(0xFF1C1C1C),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.h),
                Text(
                  carouselSubTexts[_currentIndex],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerifBengali(
                      fontSize: 14.sp, color: const Color(0xFF1C1C1C)),
                ),
              ],
            ),
          ),

          SizedBox(height: 100.h),
          // Add space between text and dots indicator
          Column(
            children: [
              DotsIndicator(
                dotsCount: carouselTexts.length,
                position: _currentIndex.toInt(), // Correct type
                decorator: DotsDecorator(
                  color: const Color(0xFFE0E6EF),
                  activeColor: const Color(0xFF2F5596),
                  size: const Size.square(8.0),
                  activeSize: Size(8.w, 8.h),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              ButtonWidgets(
                textColors: const Color(0xFFFFFFFF),
                colors: const Color(0xFF2F5596),
                btnLeadingAssets: '',
                btnFunc: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginInScreen()));
                },
                btnTextTile: "Log in",
              ),
              SizedBox(height: 15.h),
              ButtonWidgets(
                textColors: const Color(0xFF2F5596),
                colors: const Color(0xFFE0E6EF),
                btnLeadingAssets: '',
                btnFunc: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()),
                  );
                },
                btnTextTile: "Sign Up",
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}
