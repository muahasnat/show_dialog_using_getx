import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Dialog',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Show Dialog"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      //Get.defaultDialog();
                      Get.defaultDialog(
                        title: "Dialog",
                        titleStyle: TextStyle(fontSize: 20),
                        middleText: "middle text here",
                        middleTextStyle: TextStyle(fontSize: 15),
                        backgroundColor: Colors.purple,
                        radius: 50,
                        content: Row(
                          children: [
                            CircularProgressIndicator(),
                            Text("other content")
                          ],
                        ),
                        textCancel: "Cancel",
                        cancelTextColor: Colors.white,
                        textConfirm: "Confirm",
                        confirmTextColor: Colors.white,
                        onCancel: () {},
                        onConfirm: () {},
                        buttonColor: Colors.green,
                        // cancel: Text(
                        //   "Cancels",
                        //   style: TextStyle(color: Colors.blue),
                        // ),
                        // confirm: Text(
                        //   "Caonfirms",
                        //   style: TextStyle(color: Colors.blue),
                        // ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Action 1")),
                          ElevatedButton(
                              onPressed: () {}, child: Text("Action 1"))
                        ],
                        // barrierDismissible: false,
                      );
                    },
                    child: Text("Click"))
              ],
            ),
          ),
        ));
  }
}
