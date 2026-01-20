import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/views/pages/home/home_controller.dart';

class HomePage extends StatelessWidget {

  HomePage({super.key});
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Counter Demo'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
                  () => Text(
                'Counter: ${controller.count.value}',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: controller.count.value > 10 ? Colors.red : Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            Obx(
                  () => controller.isLoading.value
                  ? CircularProgressIndicator()
                  : SizedBox.shrink(),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: controller.decrement,
                  child: Icon(Icons.remove),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                ),
                ElevatedButton(
                  onPressed: controller.increment,
                  child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.incrementAsync,
              child: Text('Async Increment'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: controller.reset,
              child: Text('Reset'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
