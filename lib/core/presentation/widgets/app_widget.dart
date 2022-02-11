import 'package:flutter/material.dart';
import 'package:flutter_basic_challenge/core/application/bloc/bloc.dart';
import 'package:flutter_basic_challenge/core/application/bloc/home_page/homepage_bloc.dart';
import 'package:flutter_basic_challenge/core/core.dart';
import 'package:flutter_basic_challenge/core/presentation/pages/third_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HomepageBloc()),
        BlocProvider(create: (_) => SecondpageBloc())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        initialRoute: "firstPage",
        routes: {
          "firstPage": (_) => MyHomePage(),
          "secondPage": (_) => SecondPage(),
          "thirdPage": (_) => ThirdPage(),
        },
      ),
    );
  }
}
