import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidgets extends StatelessWidget {
  final VoidCallback btnFunc;
  final String? btnTextTile;
  final String? btnLeadingAssets;
  final Color? colors;
  final Color? textColors;

  const ButtonWidgets(
      {super.key,
      required this.btnFunc,
      required this.btnTextTile,
      this.colors,
      this.textColors,
      this.btnLeadingAssets});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: btnFunc,
      child: Container(
        alignment: Alignment.center,
        height: 48.h,
        width: 328.w,
        decoration: BoxDecoration(
            border: (btnLeadingAssets != null && btnLeadingAssets!.isNotEmpty)
                ? Border.all(width: 1, color: const Color(0xFFD2D2D2))
                : null,
            color: colors,
            borderRadius: BorderRadius.circular(8.r)),
        child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment:
                  (btnLeadingAssets != null && btnLeadingAssets!.isNotEmpty)
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
              children: [
                Padding(
                    padding: (btnLeadingAssets != null &&
                            btnLeadingAssets!.isNotEmpty)
                        ? EdgeInsets.only(left: 10.w)
                        : EdgeInsets.only(left: 0.w),
                    child: (btnLeadingAssets != null &&
                            btnLeadingAssets!.isNotEmpty)
                        ? Image.asset(
                            btnLeadingAssets!,
                            height: 20.h,
                            width: 20.w,
                          )
                        : Container()),
                Padding(
                  padding:
                      (btnLeadingAssets != null && btnLeadingAssets!.isNotEmpty)
                          ? EdgeInsets.only(left: 45.w)
                          : EdgeInsets.only(left: 0.w),
                  child: Text(btnTextTile!,
                      textAlign: TextAlign.center,
                      style: (btnLeadingAssets != null &&
                              btnLeadingAssets!.isNotEmpty)
                          ? TextStyle(
                              fontSize: 14.sp, color: const Color(0xFF1C1C1C))
                          : TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: textColors)),
                )
              ],
            )),
      ),
    );
  }
}
