import 'package:flutter/material.dart';
import 'package:flutter_getx_firebase/controllers/counter_controller.dart';
import 'other.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Clicks: ${counterController.counter.value}"),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            Get.to(OtherScreen());
          },
          child: Text("Open other screen"),
        )
      ],
    ));
  }
}
