part of 'homepage_bloc.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState({
    required int counter,
  }) = _HomepageState;

  factory HomepageState.initial() => const HomepageState(
        counter: 0,
      );
}
