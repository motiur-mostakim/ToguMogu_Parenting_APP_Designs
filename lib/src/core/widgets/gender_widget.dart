import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderWidget extends StatefulWidget {
  final String? titleName;
  final String? optionOne;
  final String? optionTwo;
  final ValueChanged<String?> onChanged;

  const GenderWidget(
      {super.key, required this.titleName, this.optionOne, this.optionTwo,required this.onChanged});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  int _selectedValue = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedValue = value ?? 1;
    });
    // Convert the integer value to a string and notify the parent
    widget.onChanged(value == 1 ? widget.optionOne : widget.optionTwo);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.titleName!,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          height: 108.h,
          width: 328.w,
          decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: const Color(0xFFD2D2D2)),
              borderRadius: BorderRadius.circular(8.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 5.h),
                child: _buildCustomRadio(widget.optionOne!, 1),
              ),
              Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 0.5, color: const Color(0xFFD2D2D2)),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: _buildCustomRadio(widget.optionTwo!, 2),
              ),
              // SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCustomRadio(String title, int value) {
    return GestureDetector(
      onTap: () {
        _handleRadioValueChange(value);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
          Transform.scale(
            scale: 1.2,
            child: Radio<int>(
              value: value,
              groupValue: _selectedValue,
              onChanged: _handleRadioValueChange,
            ),
          ),
        ],
      ),
    );
  }
}
