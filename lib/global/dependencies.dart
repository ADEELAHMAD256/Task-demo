import 'package:get/get.dart';
import 'package:task_project/controller/home_controller.dart';

class DependencyInjection {
  static Future<void> init() async {
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}
