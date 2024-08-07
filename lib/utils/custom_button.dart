import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/colors.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;
  final void Function()? onTap;
  const CustomButton(
      {super.key, this.onTap, this.height, this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 40.h,
        width: width ?? 60.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [k3263B0, k3CFEDE],
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
