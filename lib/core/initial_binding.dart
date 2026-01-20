import 'package:get/get.dart';
import 'package:my_app/app/views/pages/home/home_controller.dart';

import '../app/controller/reactive_counter_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    // Instantiate a service that needs to be available globally and instantly

    // Lazily instantiate a controller - created only when first used, but stays in memory
    Get.lazyPut(() => HomeController());
  }
}