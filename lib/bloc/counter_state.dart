part of 'counter_bloc.dart';

class CounterState extends Equatable {
  int counterValue;
  CounterState({required this.counterValue});

  @override
  List<Object> get props => [counterValue];
}

class CounterInitial extends CounterState {
  CounterInitial() : super(counterValue: 0);
}

class CounterIncState extends CounterState {
  CounterIncState(int counterIncValue) : super(counterValue: counterIncValue);
}

class CounterDecState extends CounterState {
  CounterDecState(int counterdecValue) : super(counterValue: counterdecValue);
}
