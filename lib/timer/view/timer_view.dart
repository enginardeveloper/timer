import 'package:flutter/material.dart';
import 'package:timer/timer/view/widget/actions_widget.dart';
import 'package:timer/timer/view/widget/background_widget.dart';
import 'package:timer/timer/view/widget/timer_text_widget.dart';

class TimerView extends StatefulWidget {
  const TimerView({Key? key}) : super(key: key);

  @override
  State<TimerView> createState() => _TimerViewState();
}

class _TimerViewState extends State<TimerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer view'),
      ),
      body: Stack(
        children: [
          const BackgroundWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(child: TimerTextWidget()),
              ),
               ActionsWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
