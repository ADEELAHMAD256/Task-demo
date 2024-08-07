import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircularImage extends StatelessWidget {
  final String imageUrl;
  final double? radius;
  const CustomCircularImage({super.key, required this.imageUrl, this.radius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 24.0.r,
      backgroundColor: Colors.grey,
      child: ClipOval(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          width: 48.0.w, // Diameter
          height: 48.0.h, // Diameter
          errorBuilder:
              (BuildContext context, Object error, StackTrace? stackTrace) {
            return const Icon(Icons.error);
          },
        ),
      ),
    );
  }
}
