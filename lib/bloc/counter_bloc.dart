import 'dart:async';

import 'package:bloc/bloc.dart';

import './bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event == CounterEvent.increment) {
      yield currentState + 1;
    } else if (event == CounterEvent.decrement) {
      if (currentState > 0) yield currentState - 1;
    }
  }

  // switch(event){
  //   case CounterEvent.increment:
  //   yield currentState + 1;
  //   break;
  //   case CounterEvent.decrement:
  //   if(currentState > 0)
  //   yield currentState - 1;
  //   break;
  // }
}
