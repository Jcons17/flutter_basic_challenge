// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'secondpage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SecondpageEventTearOff {
  const _$SecondpageEventTearOff();

  _LoadData loadData() {
    return const _LoadData();
  }

  _LoadDataResult loadDataResult(
      {required List<Employee> employees, required bool error}) {
    return _LoadDataResult(
      employees: employees,
      error: error,
    );
  }
}

/// @nodoc
const $SecondpageEvent = _$SecondpageEventTearOff();

/// @nodoc
mixin _$SecondpageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(List<Employee> employees, bool error)
        loadDataResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<Employee> employees, bool error)? loadDataResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<Employee> employees, bool error)? loadDataResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_LoadDataResult value) loadDataResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_LoadDataResult value)? loadDataResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_LoadDataResult value)? loadDataResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondpageEventCopyWith<$Res> {
  factory $SecondpageEventCopyWith(
          SecondpageEvent value, $Res Function(SecondpageEvent) then) =
      _$SecondpageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SecondpageEventCopyWithImpl<$Res>
    implements $SecondpageEventCopyWith<$Res> {
  _$SecondpageEventCopyWithImpl(this._value, this._then);

  final SecondpageEvent _value;
  // ignore: unused_field
  final $Res Function(SecondpageEvent) _then;
}

/// @nodoc
abstract class _$LoadDataCopyWith<$Res> {
  factory _$LoadDataCopyWith(_LoadData value, $Res Function(_LoadData) then) =
      __$LoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadDataCopyWithImpl<$Res> extends _$SecondpageEventCopyWithImpl<$Res>
    implements _$LoadDataCopyWith<$Res> {
  __$LoadDataCopyWithImpl(_LoadData _value, $Res Function(_LoadData) _then)
      : super(_value, (v) => _then(v as _LoadData));

  @override
  _LoadData get _value => super._value as _LoadData;
}

/// @nodoc

class _$_LoadData implements _LoadData {
  const _$_LoadData();

  @override
  String toString() {
    return 'SecondpageEvent.loadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(List<Employee> employees, bool error)
        loadDataResult,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<Employee> employees, bool error)? loadDataResult,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<Employee> employees, bool error)? loadDataResult,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_LoadDataResult value) loadDataResult,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_LoadDataResult value)? loadDataResult,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_LoadDataResult value)? loadDataResult,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements SecondpageEvent {
  const factory _LoadData() = _$_LoadData;
}

/// @nodoc
abstract class _$LoadDataResultCopyWith<$Res> {
  factory _$LoadDataResultCopyWith(
          _LoadDataResult value, $Res Function(_LoadDataResult) then) =
      __$LoadDataResultCopyWithImpl<$Res>;
  $Res call({List<Employee> employees, bool error});
}

/// @nodoc
class __$LoadDataResultCopyWithImpl<$Res>
    extends _$SecondpageEventCopyWithImpl<$Res>
    implements _$LoadDataResultCopyWith<$Res> {
  __$LoadDataResultCopyWithImpl(
      _LoadDataResult _value, $Res Function(_LoadDataResult) _then)
      : super(_value, (v) => _then(v as _LoadDataResult));

  @override
  _LoadDataResult get _value => super._value as _LoadDataResult;

  @override
  $Res call({
    Object? employees = freezed,
    Object? error = freezed,
  }) {
    return _then(_LoadDataResult(
      employees: employees == freezed
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadDataResult implements _LoadDataResult {
  const _$_LoadDataResult({required this.employees, required this.error});

  @override
  final List<Employee> employees;
  @override
  final bool error;

  @override
  String toString() {
    return 'SecondpageEvent.loadDataResult(employees: $employees, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadDataResult &&
            const DeepCollectionEquality().equals(other.employees, employees) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(employees), error);

  @JsonKey(ignore: true)
  @override
  _$LoadDataResultCopyWith<_LoadDataResult> get copyWith =>
      __$LoadDataResultCopyWithImpl<_LoadDataResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function(List<Employee> employees, bool error)
        loadDataResult,
  }) {
    return loadDataResult(employees, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<Employee> employees, bool error)? loadDataResult,
  }) {
    return loadDataResult?.call(employees, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function(List<Employee> employees, bool error)? loadDataResult,
    required TResult orElse(),
  }) {
    if (loadDataResult != null) {
      return loadDataResult(employees, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_LoadDataResult value) loadDataResult,
  }) {
    return loadDataResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_LoadDataResult value)? loadDataResult,
  }) {
    return loadDataResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    TResult Function(_LoadDataResult value)? loadDataResult,
    required TResult orElse(),
  }) {
    if (loadDataResult != null) {
      return loadDataResult(this);
    }
    return orElse();
  }
}

abstract class _LoadDataResult implements SecondpageEvent {
  const factory _LoadDataResult(
      {required List<Employee> employees,
      required bool error}) = _$_LoadDataResult;

  List<Employee> get employees;
  bool get error;
  @JsonKey(ignore: true)
  _$LoadDataResultCopyWith<_LoadDataResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SecondpageStateTearOff {
  const _$SecondpageStateTearOff();

  _SecondpageState call(
      {required bool loading,
      required List<Employee> employees,
      required bool errored}) {
    return _SecondpageState(
      loading: loading,
      employees: employees,
      errored: errored,
    );
  }
}

/// @nodoc
const $SecondpageState = _$SecondpageStateTearOff();

/// @nodoc
mixin _$SecondpageState {
  bool get loading => throw _privateConstructorUsedError;
  List<Employee> get employees => throw _privateConstructorUsedError;
  bool get errored => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecondpageStateCopyWith<SecondpageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondpageStateCopyWith<$Res> {
  factory $SecondpageStateCopyWith(
          SecondpageState value, $Res Function(SecondpageState) then) =
      _$SecondpageStateCopyWithImpl<$Res>;
  $Res call({bool loading, List<Employee> employees, bool errored});
}

/// @nodoc
class _$SecondpageStateCopyWithImpl<$Res>
    implements $SecondpageStateCopyWith<$Res> {
  _$SecondpageStateCopyWithImpl(this._value, this._then);

  final SecondpageState _value;
  // ignore: unused_field
  final $Res Function(SecondpageState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? employees = freezed,
    Object? errored = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      employees: employees == freezed
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      errored: errored == freezed
          ? _value.errored
          : errored // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SecondpageStateCopyWith<$Res>
    implements $SecondpageStateCopyWith<$Res> {
  factory _$SecondpageStateCopyWith(
          _SecondpageState value, $Res Function(_SecondpageState) then) =
      __$SecondpageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool loading, List<Employee> employees, bool errored});
}

/// @nodoc
class __$SecondpageStateCopyWithImpl<$Res>
    extends _$SecondpageStateCopyWithImpl<$Res>
    implements _$SecondpageStateCopyWith<$Res> {
  __$SecondpageStateCopyWithImpl(
      _SecondpageState _value, $Res Function(_SecondpageState) _then)
      : super(_value, (v) => _then(v as _SecondpageState));

  @override
  _SecondpageState get _value => super._value as _SecondpageState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? employees = freezed,
    Object? errored = freezed,
  }) {
    return _then(_SecondpageState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      employees: employees == freezed
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
      errored: errored == freezed
          ? _value.errored
          : errored // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SecondpageState implements _SecondpageState {
  const _$_SecondpageState(
      {required this.loading, required this.employees, required this.errored});

  @override
  final bool loading;
  @override
  final List<Employee> employees;
  @override
  final bool errored;

  @override
  String toString() {
    return 'SecondpageState(loading: $loading, employees: $employees, errored: $errored)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SecondpageState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other.employees, employees) &&
            (identical(other.errored, errored) || other.errored == errored));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(employees), errored);

  @JsonKey(ignore: true)
  @override
  _$SecondpageStateCopyWith<_SecondpageState> get copyWith =>
      __$SecondpageStateCopyWithImpl<_SecondpageState>(this, _$identity);
}

abstract class _SecondpageState implements SecondpageState {
  const factory _SecondpageState(
      {required bool loading,
      required List<Employee> employees,
      required bool errored}) = _$_SecondpageState;

  @override
  bool get loading;
  @override
  List<Employee> get employees;
  @override
  bool get errored;
  @override
  @JsonKey(ignore: true)
  _$SecondpageStateCopyWith<_SecondpageState> get copyWith =>
      throw _privateConstructorUsedError;
}
