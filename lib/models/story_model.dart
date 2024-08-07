class StoryCustomWidgets {
  String icon;
  String title;
  StoryCustomWidgets({required this.icon, required this.title});
}

List<StoryCustomWidgets> storyCustomWidgetsList = [
  StoryCustomWidgets(icon: "assets/icons/Plus.svg", title: "Add Listing"),
  StoryCustomWidgets(icon: "assets/icons/Search1.svg", title: "Search"),
  StoryCustomWidgets(
      icon: "assets/icons/Notification.svg", title: "Notification"),
];

class StoriesModel {
  String image;
  String title;
  StoriesModel({required this.image, required this.title});
}

List<StoriesModel> storiesList = [
  StoriesModel(image: "assets/images/ProfilePic1.png", title: "Electronics"),
  StoriesModel(image: "assets/images/ProfilePic.png", title: "Appliances"),
  StoriesModel(image: "assets/images/ProfilePic1.png", title: "Electronics"),
  StoriesModel(image: "assets/images/ProfilePic.png", title: "Appliances"),
  StoriesModel(image: "assets/images/ProfilePic1.png", title: "Electronics"),
  StoriesModel(image: "assets/images/ProfilePic.png", title: "Appliances"),
];
