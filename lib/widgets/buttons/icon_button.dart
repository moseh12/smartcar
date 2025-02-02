import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smartcar/utils/custom_style.dart';
import 'package:smartcar/utils/dimensions.dart';
import 'package:smartcar/widgets/size.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.title,
    required this.onPresssed,
    required this.iconBg,
    required this.buttonBg,
    required this.icon,
  });
  final String title;
  final VoidCallback onPresssed;
  final Icon icon;
  final Color iconBg;
  final Color buttonBg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPresssed,
      child: Container(
        decoration: BoxDecoration(
          color: buttonBg,
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 55.h,
              width: 66.w,
              decoration: BoxDecoration(
                color: iconBg,
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimensions.radius),
                ),
              ),
              child: icon,
            ),
            addHorizontalSpace(17.w),
            Text(
              title,
              style: CustomStyle.iconButtonStyle,
            ),
          ],
        ),
      ),
    );
  }
}
