import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidgets extends StatelessWidget {
  final VoidCallback btnFunc;
  final String? btnTextTile;
  final String? btnLeadingAssets;

  const ButtonWidgets(
      {super.key,
      required this.btnFunc,
      required this.btnTextTile,
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
            color: (btnLeadingAssets != null && btnLeadingAssets!.isNotEmpty)
                ? const Color(0xFFFFFFFF)
                : const Color(0xFF2F5596),
            borderRadius: BorderRadius.circular(8.r)),
        child: Container(
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child:
                        (btnLeadingAssets != null && btnLeadingAssets!.isNotEmpty)
                            ? Image.asset(
                                btnLeadingAssets!,
                                height: 20.h,
                                width: 20.w,
                              )
                            : Container(
                                alignment: Alignment.center,
                                width: 65.w,
                              )),
                Padding(
                  padding: EdgeInsets.only(left: 45.w),
                  child: Text(
                    btnTextTile!,
                    textAlign: TextAlign.center,
                    style: (btnLeadingAssets != null &&
                        btnLeadingAssets!.isNotEmpty) ? TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF1C1C1C)) : TextStyle(
                      fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: const Color(0xFFFFFFFF))
                  ),
                )
              ],
            )),
      ),
    );
  }
}
