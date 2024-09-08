import 'package:flutter/material.dart';
import 'package:smartcar/utils/custom_color.dart';
import 'package:smartcar/utils/custom_style.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key, required this.title, required this.onPresssed});
  final String title;
  final VoidCallback onPresssed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPresssed,
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.primaryColor,
      ),
      child: Text(
        title,
        style: CustomStyle.defaultButtonStyle,
      ),
    );
  }
}
