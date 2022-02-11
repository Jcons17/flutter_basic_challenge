import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rest API Test"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text("Employees:"),
              ElevatedButton(
                onPressed: () {
                  print("should load");
                },
                child: const Text("Load Employees"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
