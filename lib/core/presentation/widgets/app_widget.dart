import 'package:flutter/material.dart';
import 'package:flutter_basic_challenge/core/core.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "firstPage",
      routes: {
        "firstPage": (_) => MyHomePage(),
        "secondPage": (_) => SecondPage()
      },
    );
  }
}
