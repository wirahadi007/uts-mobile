import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'widgets/schedule_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 31.v,
          ),
          child: Column(
            children: [
              _buildStackSelamatPagi(context),
              SizedBox(height: 23.v),
              _buildSchedule(context),
              SizedBox(height: 17.v),
              _buildColumnLatestNews(context),
              SizedBox(height: 10.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackSelamatPagi(BuildContext context) {
    return SizedBox(
      height: 181.v,
      width: 318.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1,
            height: 181.v,
            width: 318.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                right: 21.h,
                bottom: 14.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Selamat Pagi,",
                      style: CustomTextStyles.labelLargeWhiteA700,
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Container(
                    width: 246.h,
                    margin: EdgeInsets.only(
                      left: 1.h,
                      right: 28.h,
                    ),
                    child: Text(
                      "Komang Ritchie Kopling Bersatu Junior VII",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Row(
                    children: [
                      Container(
                        width: 184.h,
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "123456789\n",
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Container(
                        width: 76.h,
                        margin: EdgeInsets.only(left: 16.h),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "Pagi 3",
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSchedule(BuildContext context) {
    return SizedBox(
      height: 181.v,
      child: ListView.separated(
        padding: EdgeInsets.only(right: 16.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 21.h,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ScheduleItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnLatestNews(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Latest News",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse6,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  margin: EdgeInsets.only(bottom: 8.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nadin Amizah",
                        style: CustomTextStyles.labelLargeGray800,
                      ),
                      Text(
                        "2 jam lalu",
                        style: theme.textTheme.bodySmall,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 268.h,
            margin: EdgeInsets.only(
              left: 5.h,
              right: 7.h,
            ),
            child: Text(
              "Selamat pagi Prime-U! Hari ini ada berita gembira! 3 Program Kreativitas Mahasiswa kita mendapatkan pendanaan hingga Rp 1 M. Congrats!",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallArialBlack900,
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Previous",
                  style: theme.textTheme.bodySmall,
                ),
                Text(
                  "Next ",
                  style: theme.textTheme.bodySmall,
                )
              ],
            ),
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }
}
