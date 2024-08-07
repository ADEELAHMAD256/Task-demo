import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/controller/home_controller.dart';
import 'widgets/video.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.find<HomeController>();

  @override
  void dispose() {
    super.dispose();
    for (var controller in homeController.postListData) {
      controller.videoPlayerController?.pause();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<HomeController>(builder: (controller) {
          return controller.loading
              ? const Center(child: CircularProgressIndicator())
              : PageView.builder(
                  itemCount: controller.postListData.length,
                  scrollDirection: Axis.vertical,
                  onPageChanged: (index) {
                    controller.currentPageIndex = 0;
                    controller.currentVideoIndex = index;
                    controller.handlePageChange(controller.currentVideoIndex);
                    controller.postListData[index - 1].videoPlayerController!
                        .pause();
                    if (controller.currentVideoIndex != index) {
                      controller.postListData[index - 1].videoPlayerController!
                          .pause();
                    }
                    controller.update();
                  },
                  itemBuilder: (context, index) => Video(index: index),
                );
        }),
      ),
    );
  }
}
