part of 'homepage_bloc.dart';

@freezed
class HomepageEvent with _$HomepageEvent {
  const factory HomepageEvent.add() = _Add;
  const factory HomepageEvent.substract() = _Substract;
}
