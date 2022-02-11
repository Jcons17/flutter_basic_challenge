import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';

part 'secondpage_bloc.freezed.dart';
part 'secondpage_event.dart';
part 'secondpage_state.dart';

class SecondpageBloc extends Bloc<SecondpageEvent, SecondpageState> {
  SecondpageBloc() : super(SecondpageState.initial()) {
    on<SecondpageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
