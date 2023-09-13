import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends Cubit<int> {
  Counter({this.init = 0}) : super(init); //konstraktor

  int init;

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // buat pantau error

    super.onError(error, stackTrace);
    print(error);
  }
}
