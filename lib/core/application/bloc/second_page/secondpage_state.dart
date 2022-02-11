part of 'secondpage_bloc.dart';

@freezed
class SecondpageState with _$SecondpageState {
  const factory SecondpageState({
    required bool loading,
    required List<Employee> employees,
    required bool errored,
  }) = _SecondpageState;

  factory SecondpageState.initial() => const SecondpageState(
        employees: [],
        errored: false,
        loading: false,
      );

  factory SecondpageState.loading() => const SecondpageState(
        employees: [],
        errored: false,
        loading: true,
      );
}
