import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void counterIncrement(String team, int points) {
    if (team == 'A') {
      teamAPoints += points;
      emit(CounterAincrement());
    } else if (team == 'B') {
      teamBPoints += points;
      emit(CounterBincrement());
    } else {
      emit(CounterFailure(message: 'Error'));
    }
  }

  void counterReset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterReset());
  }
}
