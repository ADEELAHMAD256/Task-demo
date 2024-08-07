import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_project/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:task_project/utils/custom_text.dart';

import '../../../const/colors.dart';

Widget buildNavItem(String icon, String label, int index) {
  return GetBuilder<HomeController>(builder: (controller) {
    return GestureDetector(
      onTap: () => controller.changeIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: controller.currentIndex == index
                    ? [k3263B0, k3CFEDE]
                    : [kA0ACBD, kA0ACBD],
                tileMode: TileMode.mirror,
              ).createShader(bounds);
            },
            child: SvgPicture.asset(icon),
          ),
          CustomTextUrbanist(
            text: label,
            fontSize: 10.sp,
            fontWeight: controller.currentIndex == index
                ? FontWeight.w700
                : FontWeight.w500,
            color: controller.currentIndex == index ? k3CFEDE : kA0ACBD,
          ),
        ],
      ),
    );
  });
}
