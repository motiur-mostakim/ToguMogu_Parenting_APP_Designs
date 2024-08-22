import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/button_widgets.dart';
import '../../../core/widgets/gender_widget.dart';
import '../../../core/widgets/text_field_widget.dart';

class ChildInformationScreen extends StatefulWidget {
  final VoidCallback buttonFunc;

  const ChildInformationScreen({super.key, required this.buttonFunc});

  @override
  State<ChildInformationScreen> createState() => _ChildInformationScreenState();
}

class _ChildInformationScreenState extends State<ChildInformationScreen> {
  String? selectedGender;
  String? selectedWorkingStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 34.h,
            ),
            const Text(
              "Last Step! For baby growth tacker set up your child Information.",
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
              prefixIconWidget: null,
              childs: null,
              lableTextTile: "Name",
            ),
            SizedBox(
              height: 16.h,
            ),
            const TextFieldWidget(
              hintTextTile: null,
              prefixIconWidget: null,
              childs: null,
              lableTextTile: "Date of Birth",
            ),
            SizedBox(
              height: 26.h,
            ),
            GenderWidget(
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
              titleName: "Gander",
              optionOne: "Female",
              optionTwo: "Male",
            ),
            SizedBox(
              height: 205.h,
            ),
            ButtonWidgets(btnFunc: widget.buttonFunc, btnTextTile: 'Continue')
          ],
        ),
      ),
    );
  }
}
