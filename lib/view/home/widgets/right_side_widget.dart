import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_project/controller/home_controller.dart';
import 'package:get/get.dart';
import '../../../const/colors.dart';
import '../components/right_widget_items.dart';

class RightWight extends StatelessWidget {
  final int index;
  const RightWight({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Column(
        children: [
          RightWidgetItems(
            text: controller.postListData[index].offers!.toString(),
            icon: "assets/icons/Vector.svg",
            padding: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: kFFBF00, shape: BoxShape.circle),
                    ),
                    Container(
                      height: 5.h,
                      width: 5.w,
                      decoration: const BoxDecoration(
                          color: kFFBF00, shape: BoxShape.circle),
                    ),
                  ],
                ),
                SizedBox(height: 3.h)
              ],
            ),
          ),
          RightWidgetItems(
            text: controller.postListData[index].likes!.toString(),
            icon: "assets/icons/Vector (1).svg",
          ),
          RightWidgetItems(
            text: controller.postListData[index].comments!.toString(),
            icon: "assets/icons/Vector (2).svg",
          ),
          RightWidgetItems(
            text: controller.postListData[index].shares!.toString(),
            icon: "assets/icons/Vector (3).svg",
          ),
          CircleAvatar(
            radius: 24.0.r,
            backgroundColor: Colors.grey,
            child: ClipOval(
              child: Image.network(
                controller.postListData[index].profileImage!,
                fit: BoxFit.cover,
                width: 48.0.w, // Diameter
                height: 48.0.h, // Diameter
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return const Icon(Icons.person_2);
                },
              ),
            ),
          ),
        ],
      );
    });
  }
}
