import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_project/utils/custom_text.dart';
import '../../../const/colors.dart';

class RightWidgetItems extends StatelessWidget {
  final String icon;
  final String text;
  final Widget? child;
  final double? padding;
  const RightWidgetItems(
      {super.key,
      this.child,
      required this.icon,
      this.padding,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48.h,
          width: 48.w,
          padding: EdgeInsets.all(padding ?? 12.r),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [k3263B0, k3CFEDE],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              child ?? const SizedBox(),
              SvgPicture.asset(icon),
            ],
          ),
        ),
        SizedBox(height: 3.h),
        CustomTextUrbanist(text: text),
        SizedBox(height: 10.h),
      ],
    );
  }
}
