import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/button_widgets.dart';

class PregnancyGrowthScreen extends StatefulWidget {
  final VoidCallback buttonFunc;
  const PregnancyGrowthScreen({super.key,required this.buttonFunc});

  @override
  State<PregnancyGrowthScreen> createState() => _PregnancyGrowthScreenState();
}

class _PregnancyGrowthScreenState extends State<PregnancyGrowthScreen> {

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
              "Last Step! For pregnancy growth tracker. Set your delivery date.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_month_rounded,
                      color: Colors.grey,
                    )),
                labelText: 'Place Holder',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Color(0xFFD2D2D2)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            SizedBox(
              height: 400.h,
            ),
            ButtonWidgets(btnFunc: widget.buttonFunc, btnTextTile: 'Continue')
          ],
        ),
      ),
    );
  }
}
