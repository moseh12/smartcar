import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:smartcar/utils/custom_color.dart';
import 'package:smartcar/utils/dimensions.dart';
import 'package:smartcar/utils/strings.dart';
import 'package:smartcar/views/home/pickup_screen.dart';
import 'package:smartcar/widgets/buttons/default_button.dart';
import 'package:smartcar/widgets/custom_appbar.dart';
import 'package:smartcar/widgets/input/default_input_text_field.dart';
import 'package:smartcar/widgets/size.dart';

class SetPickupLocationScreen extends StatelessWidget {
  SetPickupLocationScreen({super.key});
  final TextEditingController pickupLocationController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const GoogleMap(
              zoomControlsEnabled: false,
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  23.8103,
                  90.4125,
                ),
                zoom: 15,
              ),
            ),
            const CustomAppbar(
                gapBetweenBackButtonAndTitle: 0,
                gapBetweenTitlAndAppbar: 0,
                title: ''),
            Positioned(
              bottom: 0,
              child: Container(
                height: 194.h,
                width: 414.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius),
                    topRight: Radius.circular(Dimensions.radius),
                  ),
                ),
                child: Column(
                  children: [
                    addVerticalSpace(15.h),
                    GestureDetector(
                      onTap: () => showCupertinoModalSheet(
                        fullscreenDialog: true,
                        context: context,
                        builder: (context) => PickupScreen(),
                      ),
                      child: Container(
                        width: 49.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: CustomColor.secondaryColor,
                          borderRadius: BorderRadius.circular(
                            Dimensions.radius,
                          ),
                        ),
                      ),
                    ),
                    addVerticalSpace(15.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 36.0.w,
                        right: 35.2.w,
                      ),
                      child: SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: pickupLocationController,
                          hintText: Strings.setLocationHint,
                          keyboardType: TextInputType.text,
                          icon: const Icon(
                            Icons.location_on,
                            color: CustomColor.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    addVerticalSpace(19.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 36.0.w,
                        right: 35.2.w,
                      ),
                      child: SizedBox(
                        height: 55.h,
                        width: 342.76.w,
                        child: DefaultButton(
                          title: Strings.setPickUpLocation,
                          onPresssed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 219.h,
              right: 21.w,
              child: SizedBox(
                width: 67.w,
                height: 67.h,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.my_location,
                    color: CustomColor.customIconColorTwo,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
