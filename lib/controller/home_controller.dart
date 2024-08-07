import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:task_project/services/api_services.dart';
import '../models/home_data_model.dart';
import '../models/story_model.dart';

class HomeController extends GetxController {
  @override
  void onInit() async {
    await getHomeDate();
    super.onInit();
  }

  int currentIndex = 0;
  int currentVideoIndex = 0;
  int currentPageIndex = 0;
  bool loading = false;

  void changeIndex(int index) {
    currentIndex = index;
    update();
  }

  final combinedList = [...storyCustomWidgetsList, ...storiesList];

  HomeDataModel? homeDataModel;
  List<Posts> postListData = [];
  Future<void> getHomeDate() async {
    loading = true;
    String? data = await ApiServices.getHomeData();
    if (data != null) {
      final decodedData = jsonDecode(data);
      homeDataModel = HomeDataModel.fromJson(decodedData);
      postListData.clear();
      homeDataModel?.posts?.forEach((element) {
        postListData.add(element);
      });
      await initializeVideoController(0);
      if (kDebugMode) {
        print("......................${homeDataModel?.message}");
      }
    }
    loading = false;
    update();
  }

  Future<void> initializeVideoController(int index) async {
    if (postListData[index].videoPlayerController?.value.isInitialized ==
        false) {
      await postListData[index].videoPlayerController?.initialize();
    }
    await postListData[index].videoPlayerController?.play();
    update();
  }

  void disposeVideoController(int index) {
    if (postListData[index].videoPlayerController != null) {
      postListData[index].videoPlayerController?.dispose();
    }
  }

  void handlePageChange(int index) {
    if (currentVideoIndex != index) {
      disposeVideoController(currentVideoIndex);
    }
    initializeVideoController(index);
    update();
  }

  // @override
  // void onClose() {
  //   for (var controller in postListData) {
  //     controller.videoPlayerController?.dispose();
  //   }
  //   super.onClose();
  // }
}
