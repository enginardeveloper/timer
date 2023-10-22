import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer/timer/view/timer_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer app',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        colorScheme: const ColorScheme.light(
          secondary: Color.fromRGBO(72, 74, 126, 1),
        ),
      ),
      home: const TimerPage(),
    );
  }
}
