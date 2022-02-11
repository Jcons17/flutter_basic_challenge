part of 'secondpage_bloc.dart';

@freezed
class SecondpageEvent with _$SecondpageEvent {
  const factory SecondpageEvent.loadData() = _LoadData;
  const factory SecondpageEvent.loadDataResult({
    required List<Employee> employees,
    required bool error,
  }) = _LoadDataResult;
}
