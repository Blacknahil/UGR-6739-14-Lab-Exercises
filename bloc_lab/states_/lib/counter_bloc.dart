import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:states_/counter_events.dart';
// import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvents, int> {
  CounterBloc() : super(0) {
    on<CounterDecrementPressed>(
      (event, emit) => emit(state - 1),
    );
    on<CounterIncrementPressed>(
      (event, emit) => emit(state + 1),
    );
  }
}
