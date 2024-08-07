import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_project/controller/home_controller.dart';
import 'package:task_project/utils/custom_text.dart';
import 'package:task_project/view/home/widgets/right_side_widget.dart';
import 'package:task_project/view/home/widgets/top_center_widget.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';
import 'bottom_left_widget.dart';

class Video extends StatelessWidget {
  final int index;
  const Video({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (videoController) {
        return Stack(
          children: [
            videoController.postListData[index].videoPlayerController == null
                ? Center(
                    child: CustomTextUrbanist(
                      text: "Some error occure",
                      color: Colors.black,
                    ),
                  )
                : videoController.postListData[index].videoPlayerController!
                        .value.isInitialized
                    ? Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        top: 0,
                        child: PageView.builder(
                          itemCount: videoController
                              .postListData[index].images?.length,
                          onPageChanged: (currentPage) {
                            videoController.currentPageIndex = currentPage;
                            videoController.update();
                          },
                          itemBuilder: (context, pageIndex) {
                            return pageIndex == 0
                                ? AspectRatio(
                                    aspectRatio: videoController
                                        .postListData[index]
                                        .videoPlayerController!
                                        .value
                                        .aspectRatio,
                                    child: InkWell(
                                      onTap: () {
                                        final VideoPlayerController
                                            videoPlayerController =
                                            videoController.postListData[index]
                                                .videoPlayerController!;
                                        if (videoPlayerController
                                            .value.isPlaying) {
                                          videoPlayerController.pause();
                                        } else if (videoPlayerController
                                            .value.isCompleted) {
                                          videoPlayerController.play();
                                        } else {
                                          videoPlayerController.play();
                                        }
                                      },
                                      child: VideoPlayer(videoController
                                          .postListData[index]
                                          .videoPlayerController!),
                                    ),
                                  )
                                : Image.network(
                                    videoController.postListData[index]
                                        .images![pageIndex].image!,
                                    errorBuilder: (BuildContext context,
                                        Object exception,
                                        StackTrace? stackTrace) {
                                      return const Center(
                                        child: CustomTextUrbanist(
                                          text: "NO Image Found",
                                          fontSize: 25,
                                          color: Colors.black,
                                        ),
                                      ); // Path to your placeholder image
                                    },
                                  );
                          },
                        ),
                      )
                    : const Center(child: CircularProgressIndicator()),
            Positioned(
              top: 20.h,
              left: 0,
              right: 0,
              child: const TopCenterWidget(),
            ),
            Positioned(
              bottom: 56.h,
              right: 24.w,
              child: RightWight(index: index),
            ),
            Positioned(
              bottom: 24.h,
              left: 24.w,
              child: BottomLiftWidget(index: index, runTimeType: runtimeType),
            ),
          ],
        );
      },
    );
  }
}
