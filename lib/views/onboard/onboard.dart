import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smartcar/controller/onboard_controller.dart';
import 'package:smartcar/data/onboard.dart';
import 'package:smartcar/utils/custom_style.dart';
import 'package:smartcar/utils/strings.dart';
import 'package:smartcar/widgets/onboard_content.dart';
import 'package:smartcar/widgets/size.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});
  final _controller = Get.put(OnboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(children: [
        _controller.isFirstPage
            ? addVerticalSpace(214.h)
            : _controller.isSecondPage
                ? addVerticalSpace(265.h)
                : addVerticalSpace(230.h),
        SizedBox(
          height: 415.h,
          child: PageView.builder(
            controller: _controller.pageController,
            onPageChanged: _controller.selectedIndex,
            itemCount: onboardData.length,
            itemBuilder: (context, index) {
              return OnboardContent(
                image: onboardData[index].image,
                title: onboardData[index].title,
                description: onboardData[index].subTitle,
              );
            },
          ),
        ),
        Obx(() => _controller.dotWidget()),
        addVerticalSpace(65.h),
        Obx(() => _controller.buttonWidget()),
        addVerticalSpace(14.h),
        Obx(
          () => _controller.isFirstPage ||
                  _controller.isSecondPage ||
                  _controller.isThirdPage
              ? GestureDetector(
                  onTap: _controller.pageNavigate,
                  child: Text(
                    Strings.skip,
                    style: CustomStyle.skipStyle,
                  ),
                )
              : Container(),
        ),
      ]),
    );
  }
}
