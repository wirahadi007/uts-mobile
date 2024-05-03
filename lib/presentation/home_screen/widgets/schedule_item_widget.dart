import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ScheduleItemWidget extends StatelessWidget {
  const ScheduleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGreenA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 149.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "Saat ini",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 5.v),
          SizedBox(
            width: 104.h,
            child: Text(
              "Dasar-Dasar Pemrograman",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallSemiBold,
            ),
          ),
          SizedBox(height: 17.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMdiClockOutline,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "08.00 - 11.20",
                  style: theme.textTheme.titleSmall,
                ),
              )
            ],
          ),
          SizedBox(height: 3.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaterialSymbol,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(top: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "Lab Data ",
                  style: theme.textTheme.titleSmall,
                ),
              )
            ],
          ),
          SizedBox(height: 5.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCarbonUser,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(top: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "Mr. Buda S.",
                  style: theme.textTheme.titleSmall,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
