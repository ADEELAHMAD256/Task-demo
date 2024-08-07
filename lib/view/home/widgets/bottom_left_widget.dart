import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../const/colors.dart';
import '../../../controller/home_controller.dart';
import '../../../models/home_data_model.dart';
import '../../../utils/custom_button.dart';
import '../../../utils/custom_circular_image.dart';
import '../../../utils/custom_text.dart';
import '../../../utils/show_diaog.dart';

class BottomLiftWidget extends StatelessWidget {
  final int index;
  final Type runTimeType;
  const BottomLiftWidget({
    super.key,
    required this.index,
    required this.runTimeType,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      Posts postsData = controller.postListData[index];
      return SizedBox(
        width: 250.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextUrbanist(
              text: postsData.postTitle ?? "",
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 5.h),
            CustomTextUrbanist(
              text:
                  "${postsData.currency == "0" || runTimeType == int ? "N/A" : postsData.currency} ${postsData.price}",
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
              color: kFFBF00,
            ),
            SizedBox(height: 5.h),
            CustomTextUrbanist(
              text: "${postsData.description} ${postsData.hashtagTitles}",
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 7.h),
            Row(
              children: [
                CustomCircularImage(imageUrl: postsData.flag!, radius: 14.r),
                SizedBox(width: 8.w),
                CustomTextUrbanist(
                  text: postsData.country ?? "",
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            SizedBox(height: 7.h),
            CustomButton(
              height: 40.h,
              width: 150.w,
              onTap: () async {
                // if (!await launchUrl(Uri.parse(postsData.website!))) {
                //   showMyDialog(context);
                //   Future.delayed(const Duration(seconds: 2), () => Get.back());
                //   throw Exception('Could not launch');
                // }
                if (postsData.website == null || postsData.website == "") {
                  showMyDialog(context);
                  Future.delayed(const Duration(seconds: 2), () => Get.back());
                }
              },
              child: CustomTextUrbanist(
                text: "Visit Website",
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: List.generate(
                postsData.images?.length ?? 0,
                (index) => Container(
                  height: 10.h,
                  width: controller.currentPageIndex == index ? 20.w : 10.w,
                  margin: EdgeInsets.only(right: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    gradient: controller.currentPageIndex == index
                        ? const LinearGradient(
                            colors: [kF7631D, kF9B527],
                          )
                        : null,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
