import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smartcar/utils/custom_style.dart';
import 'package:smartcar/widgets/size.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.gapBetweenBackButtonAndTitle,
    required this.gapBetweenTitlAndAppbar,
    required this.title,
  });

  final double gapBetweenBackButtonAndTitle;
  final double gapBetweenTitlAndAppbar;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        addHorizontalSpace(24.h),
        Column(
          children: [
            addVerticalSpace(31.h),
            GestureDetector(
              onTap: Get.back,
              child: Image.asset("assets/images/back-button.png"),
            ),
          ],
        ),
        addHorizontalSpace(gapBetweenBackButtonAndTitle),
        Column(
          children: [
            addVerticalSpace(gapBetweenTitlAndAppbar),
            Text(
              title,
              style: CustomStyle.appbarTitleStyle,
            ),
          ],
        )
      ],
    );
  }
}
