import 'package:get/get.dart';
import 'package:my_app/app/routes/app_routes.dart';

class HomeController extends GetxController {
  var count = 0.obs;
  var isLoading = false.obs;

  void increment() {
    count.value++;
  }

  void decrement() {
    if (count.value > 0) {
      count.value--;
    }
  }

  void reset() {
    count.value = 0;
  }

  // Simulate async operation
  Future<void> incrementAsync() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 1));
    count.value++;
    isLoading.value = false;
  }

  // Computed property
  String get counterText {
    if (count.value == 0) return 'Zero';
    if (count.value == 1) return 'One';
    return count.value.toString();
  }

  // Validation
  bool get canDecrement => count.value > 0;

  void goToSecond() {
    Get.toNamed(Routes.LOGIN);
  }

  /*
  * If we can navigate screen into another page and delete current page from stack then we can use method which is define below :

Get.off(Third());
If we can navigate screen into another page and delete all route or page from stack then we can use the method which is define below :

Get.offAll(Third());
If we want to use Navigator.pop() then GetX give a Method which is define below :

Get.back();
If we want to pass data through the navigator then we use below method :

// for passing single argument
Get.to(Second(),arguments:"Hello World!");
// for passing multiple argument
Get.to(Second(),arguments:[10,20]);
* */
}
