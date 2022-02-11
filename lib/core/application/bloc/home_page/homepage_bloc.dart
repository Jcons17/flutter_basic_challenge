import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';
part 'homepage_bloc.freezed.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  HomepageBloc() : super(HomepageState.initial()) {
    on<_Add>((event, emit) {
      emit(HomepageState(counter: state.counter + 1));
    });
    on<_Substract>((event, emit) {
      emit(HomepageState(counter: state.counter - 1));
    });
  }

  increment() {
    add(
      const HomepageEvent.add(),
    );
  }

  substract() {
    add(
      const HomepageEvent.substract(),
    );
  }
}
