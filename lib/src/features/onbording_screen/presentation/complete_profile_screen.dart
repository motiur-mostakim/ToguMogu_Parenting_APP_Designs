import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:togumogu_parenting_app_designs/src/core/widgets/gender_widget.dart';
import 'package:togumogu_parenting_app_designs/src/core/widgets/text_field_widget.dart';
import '../../../core/widgets/button_widgets.dart';

class CompleteProfileScreen extends StatefulWidget {
  final VoidCallback buttonFunc;
  const CompleteProfileScreen({super.key, required this.buttonFunc});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  String? selectedGender;
  String? selectedWorkingStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 34.h,
            ),
            const Text(
              "To get started, complete your profile",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            const TextFieldWidget(
              hintTextTile: null,
              suffixIconWidget: null,
              childs: null,
              lableTextTile: "Name",
            ),
            SizedBox(
              height: 16.h,
            ),
            const TextFieldWidget(
              hintTextTile: null,
              suffixIconWidget: null,
              childs: null,
              lableTextTile: "Email",
            ),
            SizedBox(
              height: 26.h,
            ),
            if (selectedGender != null) ...[
              GenderWidget(
                optionOne: "Female",
                optionTwo: "Male",
                titleName: "Gender",
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                    if (selectedGender != "Female") {
                      selectedWorkingStatus = null;
                    }
                  });
                },
              ),
              SizedBox(
                height: 26.h,
              ),
              if (selectedGender == "Female") ...[
                GenderWidget(
                  optionOne: "Yes",
                  optionTwo: "No",
                  titleName: "Are you working woman?",
                  onChanged: (value) {
                    setState(() {
                      selectedWorkingStatus = value;
                    });
                  },
                ),
                SizedBox(
                  height: 26.h,
                ),
              ],
            ] else ...[
              GenderWidget(
                optionOne: "Female",
                optionTwo: "Male",
                titleName: "Gender",
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                    if (selectedGender != "Female") {
                      selectedWorkingStatus = null;
                    }
                  });
                },
              ),
            ],
            if (selectedGender == "Female") ...[
        SizedBox(
          height: 35.h,
        ),
            ] else if (selectedGender == "Male") ...[
        SizedBox(
          height: 205.h,
        )
            ]else ...[
        SizedBox(
          height: 230.h,
        )
            ],
            ButtonWidgets(textColors: const Color(0xFFFFFFFF),
              colors: const Color(0xFF2F5596),
              btnFunc: widget.buttonFunc,
              btnTextTile: 'Continue',
            )
          ],
        ),
      ),
    );
  }
}
