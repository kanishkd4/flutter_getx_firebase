import 'package:flutter/material.dart';
import 'package:flutter_getx_firebase/controllers/counter_controller.dart';
import 'other.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            /// we have to wrap everything around obx and then the counter actually changes. So the whole app is now based on getx.
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Clicks: ${counterController.counter.value}")),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(OtherScreen());
                  },
                  child: Text("Open other screen"),
                ),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterController.increment();
          },
          child: Icon(Icons.add)),
    );
  }
}
