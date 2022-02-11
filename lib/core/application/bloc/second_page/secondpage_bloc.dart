import 'package:bloc/bloc.dart';
import 'package:flutter_basic_challenge/core/infrastructure/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';

part 'secondpage_bloc.freezed.dart';
part 'secondpage_event.dart';
part 'secondpage_state.dart';

class SecondpageBloc extends Bloc<SecondpageEvent, SecondpageState> {
  SecondpageBloc() : super(SecondpageState.initial()) {
    on<_LoadData>((event, emit) async {
      add(const _LoadDataResult(employees: [], error: false));
      final list = await EmployeeRepositoryImpl().getAll();
      add(_LoadDataResult(employees: list, error: false));
    });
    on<_LoadDataResult>((event, emit) async {
      if (event.employees.isEmpty) {
        if (state.loading) {
          emit(SecondpageState(
              loading: false, employees: event.employees, errored: true));
        } else {
          emit(SecondpageState(
              loading: true, employees: event.employees, errored: false));
        }
      } else {
        emit(SecondpageState(
            loading: false, employees: event.employees, errored: false));
      }
    });
  }

  loadData() {
    add(const _LoadData());
  }
}
