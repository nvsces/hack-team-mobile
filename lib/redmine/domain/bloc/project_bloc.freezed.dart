// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProjectEventTearOff {
  const _$ProjectEventTearOff();

  ReadProjectEvent read() {
    return const ReadProjectEvent();
  }
}

/// @nodoc
const $ProjectEvent = _$ProjectEventTearOff();

/// @nodoc
mixin _$ProjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadProjectEvent value) read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadProjectEvent value)? read,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadProjectEvent value)? read,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEventCopyWith<$Res> {
  factory $ProjectEventCopyWith(
          ProjectEvent value, $Res Function(ProjectEvent) then) =
      _$ProjectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectEventCopyWithImpl<$Res> implements $ProjectEventCopyWith<$Res> {
  _$ProjectEventCopyWithImpl(this._value, this._then);

  final ProjectEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectEvent) _then;
}

/// @nodoc
abstract class $ReadProjectEventCopyWith<$Res> {
  factory $ReadProjectEventCopyWith(
          ReadProjectEvent value, $Res Function(ReadProjectEvent) then) =
      _$ReadProjectEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadProjectEventCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements $ReadProjectEventCopyWith<$Res> {
  _$ReadProjectEventCopyWithImpl(
      ReadProjectEvent _value, $Res Function(ReadProjectEvent) _then)
      : super(_value, (v) => _then(v as ReadProjectEvent));

  @override
  ReadProjectEvent get _value => super._value as ReadProjectEvent;
}

/// @nodoc

class _$ReadProjectEvent extends ReadProjectEvent {
  const _$ReadProjectEvent() : super._();

  @override
  String toString() {
    return 'ProjectEvent.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReadProjectEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() read,
  }) {
    return read();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? read,
  }) {
    return read?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadProjectEvent value) read,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadProjectEvent value)? read,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadProjectEvent value)? read,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }
}

abstract class ReadProjectEvent extends ProjectEvent {
  const factory ReadProjectEvent() = _$ReadProjectEvent;
  const ReadProjectEvent._() : super._();
}

/// @nodoc
class _$ProjectStateTearOff {
  const _$ProjectStateTearOff();

  LoadingProjectState loading() {
    return const LoadingProjectState();
  }

  LoadedProjectState loaded(List<ProjectModel> result) {
    return LoadedProjectState(
      result,
    );
  }

  FailureLoginProjectState failureLogin() {
    return const FailureLoginProjectState();
  }
}

/// @nodoc
const $ProjectState = _$ProjectStateTearOff();

/// @nodoc
mixin _$ProjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> result) loaded,
    required TResult Function() failureLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectModel> result)? loaded,
    TResult Function()? failureLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectModel> result)? loaded,
    TResult Function()? failureLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProjectState value) loading,
    required TResult Function(LoadedProjectState value) loaded,
    required TResult Function(FailureLoginProjectState value) failureLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingProjectState value)? loading,
    TResult Function(LoadedProjectState value)? loaded,
    TResult Function(FailureLoginProjectState value)? failureLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProjectState value)? loading,
    TResult Function(LoadedProjectState value)? loaded,
    TResult Function(FailureLoginProjectState value)? failureLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res> implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  final ProjectState _value;
  // ignore: unused_field
  final $Res Function(ProjectState) _then;
}

/// @nodoc
abstract class $LoadingProjectStateCopyWith<$Res> {
  factory $LoadingProjectStateCopyWith(
          LoadingProjectState value, $Res Function(LoadingProjectState) then) =
      _$LoadingProjectStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingProjectStateCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res>
    implements $LoadingProjectStateCopyWith<$Res> {
  _$LoadingProjectStateCopyWithImpl(
      LoadingProjectState _value, $Res Function(LoadingProjectState) _then)
      : super(_value, (v) => _then(v as LoadingProjectState));

  @override
  LoadingProjectState get _value => super._value as LoadingProjectState;
}

/// @nodoc

class _$LoadingProjectState extends LoadingProjectState {
  const _$LoadingProjectState() : super._();

  @override
  String toString() {
    return 'ProjectState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingProjectState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> result) loaded,
    required TResult Function() failureLogin,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectModel> result)? loaded,
    TResult Function()? failureLogin,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectModel> result)? loaded,
    TResult Function()? failureLogin,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProjectState value) loading,
    required TResult Function(LoadedProjectState value) loaded,
    required TResult Function(FailureLoginProjectState value) failureLogin,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingProjectState value)? loading,
    TResult Function(LoadedProjectState value)? loaded,
    TResult Function(FailureLoginProjectState value)? failureLogin,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProjectState value)? loading,
    TResult Function(LoadedProjectState value)? loaded,
    TResult Function(FailureLoginProjectState value)? failureLogin,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProjectState extends ProjectState {
  const factory LoadingProjectState() = _$LoadingProjectState;
  const LoadingProjectState._() : super._();
}

/// @nodoc
abstract class $LoadedProjectStateCopyWith<$Res> {
  factory $LoadedProjectStateCopyWith(
          LoadedProjectState value, $Res Function(LoadedProjectState) then) =
      _$LoadedProjectStateCopyWithImpl<$Res>;
  $Res call({List<ProjectModel> result});
}

/// @nodoc
class _$LoadedProjectStateCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res>
    implements $LoadedProjectStateCopyWith<$Res> {
  _$LoadedProjectStateCopyWithImpl(
      LoadedProjectState _value, $Res Function(LoadedProjectState) _then)
      : super(_value, (v) => _then(v as LoadedProjectState));

  @override
  LoadedProjectState get _value => super._value as LoadedProjectState;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(LoadedProjectState(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc

class _$LoadedProjectState extends LoadedProjectState {
  const _$LoadedProjectState(this.result) : super._();

  @override
  final List<ProjectModel> result;

  @override
  String toString() {
    return 'ProjectState.loaded(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedProjectState &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $LoadedProjectStateCopyWith<LoadedProjectState> get copyWith =>
      _$LoadedProjectStateCopyWithImpl<LoadedProjectState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> result) loaded,
    required TResult Function() failureLogin,
  }) {
    return loaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectModel> result)? loaded,
    TResult Function()? failureLogin,
  }) {
    return loaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectModel> result)? loaded,
    TResult Function()? failureLogin,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProjectState value) loading,
    required TResult Function(LoadedProjectState value) loaded,
    required TResult Function(FailureLoginProjectState value) failureLogin,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingProjectState value)? loading,
    TResult Function(LoadedProjectState value)? loaded,
    TResult Function(FailureLoginProjectState value)? failureLogin,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProjectState value)? loading,
    TResult Function(LoadedProjectState value)? loaded,
    TResult Function(FailureLoginProjectState value)? failureLogin,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedProjectState extends ProjectState {
  const factory LoadedProjectState(List<ProjectModel> result) =
      _$LoadedProjectState;
  const LoadedProjectState._() : super._();

  List<ProjectModel> get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedProjectStateCopyWith<LoadedProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureLoginProjectStateCopyWith<$Res> {
  factory $FailureLoginProjectStateCopyWith(FailureLoginProjectState value,
          $Res Function(FailureLoginProjectState) then) =
      _$FailureLoginProjectStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureLoginProjectStateCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res>
    implements $FailureLoginProjectStateCopyWith<$Res> {
  _$FailureLoginProjectStateCopyWithImpl(FailureLoginProjectState _value,
      $Res Function(FailureLoginProjectState) _then)
      : super(_value, (v) => _then(v as FailureLoginProjectState));

  @override
  FailureLoginProjectState get _value =>
      super._value as FailureLoginProjectState;
}

/// @nodoc

class _$FailureLoginProjectState extends FailureLoginProjectState {
  const _$FailureLoginProjectState() : super._();

  @override
  String toString() {
    return 'ProjectState.failureLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FailureLoginProjectState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> result) loaded,
    required TResult Function() failureLogin,
  }) {
    return failureLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectModel> result)? loaded,
    TResult Function()? failureLogin,
  }) {
    return failureLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ProjectModel> result)? loaded,
    TResult Function()? failureLogin,
    required TResult orElse(),
  }) {
    if (failureLogin != null) {
      return failureLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingProjectState value) loading,
    required TResult Function(LoadedProjectState value) loaded,
    required TResult Function(FailureLoginProjectState value) failureLogin,
  }) {
    return failureLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingProjectState value)? loading,
    TResult Function(LoadedProjectState value)? loaded,
    TResult Function(FailureLoginProjectState value)? failureLogin,
  }) {
    return failureLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingProjectState value)? loading,
    TResult Function(LoadedProjectState value)? loaded,
    TResult Function(FailureLoginProjectState value)? failureLogin,
    required TResult orElse(),
  }) {
    if (failureLogin != null) {
      return failureLogin(this);
    }
    return orElse();
  }
}

abstract class FailureLoginProjectState extends ProjectState {
  const factory FailureLoginProjectState() = _$FailureLoginProjectState;
  const FailureLoginProjectState._() : super._();
}
