import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_project/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:task_project/utils/custom_text.dart';
import 'package:task_project/view/home/home_screen.dart';
import '../../const/colors.dart';
import '../../utils/custom_button.dart';
import 'components/nav_bar_items.dart';

class BottomNavbarScreen extends StatelessWidget {
  BottomNavbarScreen({super.key});
  final HomeController homeController = Get.find<HomeController>();
  final List<Widget> screens = [
    const HomeScreen(),
    Container(
      color: Colors.red,
      child: const Center(
        child: CustomTextUrbanist(
          text: "Discover Screen",
          fontSize: 20,
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Center(
        child: CustomTextUrbanist(
          text: "Add Screen",
          fontSize: 20,
        ),
      ),
    ),
    Container(
      color: Colors.blue,
      child: const Center(
        child: CustomTextUrbanist(
          text: "Deals Screen",
          fontSize: 20,
        ),
      ),
    ),
    Container(
      color: Colors.grey,
      child: const Center(
        child: CustomTextUrbanist(
          text: "Profile Screen",
          fontSize: 20,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        body: screens[controller.currentIndex],
        bottomNavigationBar: Container(
          color: k0D2444,
          height: 65.0.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildNavItem("assets/icons/Home.svg", 'Home', 0),
              buildNavItem("assets/icons/Search.svg", 'Discover', 1),
              CustomButton(
                onTap: () => controller.changeIndex(2),
                child: const Icon(Icons.add, color: Colors.black),
              ),
              buildNavItem("assets/icons/Work.svg", 'Deals', 3),
              buildNavItem("assets/icons/Profile.svg", 'Profile', 4),
            ],
          ),
        ),
      );
    });
  }
}
