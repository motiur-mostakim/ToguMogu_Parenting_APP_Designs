import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:togumogu_parenting_app_designs/src/core/widgets/button_widgets.dart';

class CurrenStageScreen extends StatefulWidget {
  final void Function() buttonFunc;
  final void Function(String) onOptionSelected; // Add this line

  const CurrenStageScreen({
    Key? key,
    required this.buttonFunc,
    required this.onOptionSelected, // Add this line
  }) : super(key: key);

  @override
  _CurrenStageScreenState createState() => _CurrenStageScreenState();
}

class _CurrenStageScreenState extends State<CurrenStageScreen> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;

  void _toggleCheckbox(int index, bool? newValue) {
    setState(() {
      if (index == 1) {
        _isChecked1 = newValue ?? false;
        widget.onOptionSelected("I am a parent");
      } else if (index == 2) {
        _isChecked2 = newValue ?? false;
        widget.onOptionSelected("We are expecting child");
      } else if (index == 3) {
        _isChecked3 = newValue ?? false;
        widget.onOptionSelected("I am not a parent");
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 34.h,
          ),
          const Text(
            "Great! What's your current stage?",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 34.0),
          _buildCheckbox(
            image: "assets/images/baby_love_image.png",
            text: "I am a parent",
            isChecked: _isChecked1,
            onChanged: (value) => _toggleCheckbox(1, value),
          ),
          SizedBox(
            height: 16.h,
          ),
          _buildCheckbox(
            image: "assets/images/baby_image.png",
            text: "We are expecting child",
            isChecked: _isChecked2,
            onChanged: (value) => _toggleCheckbox(2, value),
          ),
          SizedBox(
            height: 16.h,
          ),
          _buildCheckbox(
            image: "assets/images/ring_image.png",
            text: "I am not a parent",
            isChecked: _isChecked3,
            onChanged: (value) => _toggleCheckbox(3, value),
          ),
          SizedBox(
            height: 298.h,
          ),
          ButtonWidgets(
            btnFunc: () {
              widget.buttonFunc();
            },
            btnTextTile: 'Continue',
          )
        ],
      ),
    );
  }

  Widget _buildCheckbox({
    required String image,
    required String text,
    required bool isChecked,
    required ValueChanged<bool?> onChanged,
  }) {
    return Container(
      alignment: Alignment.center,
      height: 63.h,
      width: 328.w,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes the position of the shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 16.w,
              ),
              Image.asset(
                image,
                height: 34.h,
                width: 34.w,
              ),
              SizedBox(
                width: 16.w,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Transform.scale(
            scale: 1.3,
            child: Checkbox(
              side: const BorderSide(color: Color(0xFFB4AFAF)),
              activeColor: const Color(0xFF66BD50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              value: isChecked,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
