import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../models/story_model.dart';
import '../components/story_widget.dart';

class TopCenterWidget extends StatelessWidget {
  const TopCenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(top: 5.h, right: 24.w, left: 24.w),
        child: Row(
          children: [
            ...List.generate(
              storyCustomWidgetsList.length,
              (index) => StoryWidget(
                      isStory: false,
                      image: storyCustomWidgetsList[index].icon,
                      title: storyCustomWidgetsList[index].title)
                  .paddingOnly(right: 10.w),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40.w,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(width: 10.w),
                itemCount: storiesList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => StoryWidget(
                    isStory: true,
                    image: storiesList[index].image,
                    title: storiesList[index].title),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
