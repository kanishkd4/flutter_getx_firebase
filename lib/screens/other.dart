import 'package:flutter/material.dart';
import 'package:flutter_getx_firebase/controllers/counter_controller.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get
      .find(); // Getx will automatically assing the variable to the controller as long as they have the same type
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Screen was clicked ${_counterController} times"),
        SizedBox(
          height: 10.0,
        ),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Open other screen")),
      ],
    ));
  }
}
