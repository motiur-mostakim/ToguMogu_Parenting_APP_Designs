import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintTextTile;
  final String? lableTextTile;
  final Widget? childs;
  final Widget?prefixIconWidget;

  const TextFieldWidget(
      {super.key, this.hintTextTile, this.childs, this.lableTextTile,this.prefixIconWidget});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: lableTextTile,
        labelStyle: GoogleFonts.roboto(
          color: const Color(0xFFD2D2D2),
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        hintText: hintTextTile,
        hintStyle: GoogleFonts.roboto(
          color: const Color(0xFFD2D2D2),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: childs != null
            ? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              childs!,
              const SizedBox(width: 8),
              Container(
                height: 20,
                width: 1,
                color: Colors.grey,
              ),
            ],
          ),
        )
            : null,
        floatingLabelStyle: GoogleFonts.roboto(
          color: const Color(0xFF2F5596), // Label color when focused
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Color(0xFFD2D2D2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(color: const Color(0xFF2F5596), width: 2.w),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
