import 'package:eduvie_movie/controller/dashboard_controller.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
  }
}