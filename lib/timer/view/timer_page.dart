import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer/timer/view/timer_view.dart';

import '../../ticker.dart';
import '../bloc/timer_bloc.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TimerBloc(ticker: const Ticker()),
        child: const TimerView(),
    );
  }
}
