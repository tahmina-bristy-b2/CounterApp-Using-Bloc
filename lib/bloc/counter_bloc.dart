import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrementEvent>((event, emit) {
      emit(CounterIncState(state.counterValue + 1));
    });
    on<CounterDecrementEvent>((event, emit) {
      emit(CounterDecState(state.counterValue - 1));
    });
  }
}
