import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../utils/custom_text.dart';
import 'gradient_border.dart';

class StoryWidget extends StatelessWidget {
  final String image;
  final String title;
  final bool isStory;
  const StoryWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.isStory});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: isStory ? 45.5.h : 45.h,
            minHeight: isStory ? 45.5.w : 45.w,
          ),
          child: CustomPaint(
            painter: GradientBorderPainter(),
            child: image.contains(".svg")
                ? SizedBox(
                    child: Container(
                      child: SvgPicture.asset(
                        image,
                        height: 22.h,
                        width: 22.w,
                      ).paddingAll(12),
                    ),
                  )
                : Image.asset(image).paddingAll(2),
          ),
        ),
        SizedBox(height: 8.h),
        CustomTextUrbanist(
          text: title,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}
