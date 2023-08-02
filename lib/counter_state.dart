part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterAincrement extends CounterState {}

class CounterBincrement extends CounterState {}

class CounterReset extends CounterState {}

class CounterFailure extends CounterState {
  final String message;

  CounterFailure({required this.message});
}
