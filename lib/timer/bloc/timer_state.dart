part of 'timer_bloc.dart';

// @immutable
// abstract class TimerState {}

@immutable
abstract class TimerState extends Equatable {
  const TimerState({required this.duration});

  final int duration;

  @override
  List<Object?> get props => [duration];
}

class TimerInitial extends TimerState {
  const TimerInitial({required super.duration});

  @override
  String toString() {
    return 'TimerInitial { duration: $duration }';
  }
}

class TimerRunPause extends TimerState {
  const TimerRunPause({required super.duration});

  @override
  String toString() {
    return 'TimerRunPause { duration: $duration }';
  }
}

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress({required super.duration});

  @override
  String toString() {
    return 'TimerRunInProgress { duration: $duration }';
  }
}

class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(duration: 0);

  @override
  String toString() {
    return 'TimerRunComplete { duration: $duration }';
  }
}
