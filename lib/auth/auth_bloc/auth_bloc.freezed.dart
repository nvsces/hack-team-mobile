// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  LoginAuthEvent login({required String password, required String name}) {
    return LoginAuthEvent(
      password: password,
      name: name,
    );
  }

  LogoutAuthEvent logout() {
    return const LogoutAuthEvent();
  }

  CheckAutorizationAuthEvent checkAutorization() {
    return const CheckAutorizationAuthEvent();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String name) login,
    required TResult Function() logout,
    required TResult Function() checkAutorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password, String name)? login,
    TResult Function()? logout,
    TResult Function()? checkAutorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String name)? login,
    TResult Function()? logout,
    TResult Function()? checkAutorization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthEvent value) login,
    required TResult Function(LogoutAuthEvent value) logout,
    required TResult Function(CheckAutorizationAuthEvent value)
        checkAutorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginAuthEvent value)? login,
    TResult Function(LogoutAuthEvent value)? logout,
    TResult Function(CheckAutorizationAuthEvent value)? checkAutorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthEvent value)? login,
    TResult Function(LogoutAuthEvent value)? logout,
    TResult Function(CheckAutorizationAuthEvent value)? checkAutorization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $LoginAuthEventCopyWith<$Res> {
  factory $LoginAuthEventCopyWith(
          LoginAuthEvent value, $Res Function(LoginAuthEvent) then) =
      _$LoginAuthEventCopyWithImpl<$Res>;
  $Res call({String password, String name});
}

/// @nodoc
class _$LoginAuthEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LoginAuthEventCopyWith<$Res> {
  _$LoginAuthEventCopyWithImpl(
      LoginAuthEvent _value, $Res Function(LoginAuthEvent) _then)
      : super(_value, (v) => _then(v as LoginAuthEvent));

  @override
  LoginAuthEvent get _value => super._value as LoginAuthEvent;

  @override
  $Res call({
    Object? password = freezed,
    Object? name = freezed,
  }) {
    return _then(LoginAuthEvent(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginAuthEvent extends LoginAuthEvent {
  const _$LoginAuthEvent({required this.password, required this.name})
      : super._();

  @override
  final String password;
  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.login(password: $password, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginAuthEvent &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $LoginAuthEventCopyWith<LoginAuthEvent> get copyWith =>
      _$LoginAuthEventCopyWithImpl<LoginAuthEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String name) login,
    required TResult Function() logout,
    required TResult Function() checkAutorization,
  }) {
    return login(password, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password, String name)? login,
    TResult Function()? logout,
    TResult Function()? checkAutorization,
  }) {
    return login?.call(password, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String name)? login,
    TResult Function()? logout,
    TResult Function()? checkAutorization,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(password, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthEvent value) login,
    required TResult Function(LogoutAuthEvent value) logout,
    required TResult Function(CheckAutorizationAuthEvent value)
        checkAutorization,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginAuthEvent value)? login,
    TResult Function(LogoutAuthEvent value)? logout,
    TResult Function(CheckAutorizationAuthEvent value)? checkAutorization,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthEvent value)? login,
    TResult Function(LogoutAuthEvent value)? logout,
    TResult Function(CheckAutorizationAuthEvent value)? checkAutorization,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginAuthEvent extends AuthEvent {
  const factory LoginAuthEvent(
      {required String password, required String name}) = _$LoginAuthEvent;
  const LoginAuthEvent._() : super._();

  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginAuthEventCopyWith<LoginAuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutAuthEventCopyWith<$Res> {
  factory $LogoutAuthEventCopyWith(
          LogoutAuthEvent value, $Res Function(LogoutAuthEvent) then) =
      _$LogoutAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutAuthEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LogoutAuthEventCopyWith<$Res> {
  _$LogoutAuthEventCopyWithImpl(
      LogoutAuthEvent _value, $Res Function(LogoutAuthEvent) _then)
      : super(_value, (v) => _then(v as LogoutAuthEvent));

  @override
  LogoutAuthEvent get _value => super._value as LogoutAuthEvent;
}

/// @nodoc

class _$LogoutAuthEvent extends LogoutAuthEvent {
  const _$LogoutAuthEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogoutAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String name) login,
    required TResult Function() logout,
    required TResult Function() checkAutorization,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password, String name)? login,
    TResult Function()? logout,
    TResult Function()? checkAutorization,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String name)? login,
    TResult Function()? logout,
    TResult Function()? checkAutorization,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthEvent value) login,
    required TResult Function(LogoutAuthEvent value) logout,
    required TResult Function(CheckAutorizationAuthEvent value)
        checkAutorization,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginAuthEvent value)? login,
    TResult Function(LogoutAuthEvent value)? logout,
    TResult Function(CheckAutorizationAuthEvent value)? checkAutorization,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthEvent value)? login,
    TResult Function(LogoutAuthEvent value)? logout,
    TResult Function(CheckAutorizationAuthEvent value)? checkAutorization,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutAuthEvent extends AuthEvent {
  const factory LogoutAuthEvent() = _$LogoutAuthEvent;
  const LogoutAuthEvent._() : super._();
}

/// @nodoc
abstract class $CheckAutorizationAuthEventCopyWith<$Res> {
  factory $CheckAutorizationAuthEventCopyWith(CheckAutorizationAuthEvent value,
          $Res Function(CheckAutorizationAuthEvent) then) =
      _$CheckAutorizationAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckAutorizationAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $CheckAutorizationAuthEventCopyWith<$Res> {
  _$CheckAutorizationAuthEventCopyWithImpl(CheckAutorizationAuthEvent _value,
      $Res Function(CheckAutorizationAuthEvent) _then)
      : super(_value, (v) => _then(v as CheckAutorizationAuthEvent));

  @override
  CheckAutorizationAuthEvent get _value =>
      super._value as CheckAutorizationAuthEvent;
}

/// @nodoc

class _$CheckAutorizationAuthEvent extends CheckAutorizationAuthEvent {
  const _$CheckAutorizationAuthEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.checkAutorization()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckAutorizationAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String password, String name) login,
    required TResult Function() logout,
    required TResult Function() checkAutorization,
  }) {
    return checkAutorization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String password, String name)? login,
    TResult Function()? logout,
    TResult Function()? checkAutorization,
  }) {
    return checkAutorization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String password, String name)? login,
    TResult Function()? logout,
    TResult Function()? checkAutorization,
    required TResult orElse(),
  }) {
    if (checkAutorization != null) {
      return checkAutorization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthEvent value) login,
    required TResult Function(LogoutAuthEvent value) logout,
    required TResult Function(CheckAutorizationAuthEvent value)
        checkAutorization,
  }) {
    return checkAutorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginAuthEvent value)? login,
    TResult Function(LogoutAuthEvent value)? logout,
    TResult Function(CheckAutorizationAuthEvent value)? checkAutorization,
  }) {
    return checkAutorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthEvent value)? login,
    TResult Function(LogoutAuthEvent value)? logout,
    TResult Function(CheckAutorizationAuthEvent value)? checkAutorization,
    required TResult orElse(),
  }) {
    if (checkAutorization != null) {
      return checkAutorization(this);
    }
    return orElse();
  }
}

abstract class CheckAutorizationAuthEvent extends AuthEvent {
  const factory CheckAutorizationAuthEvent() = _$CheckAutorizationAuthEvent;
  const CheckAutorizationAuthEvent._() : super._();
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  LoggedAuthState logged() {
    return const LoggedAuthState();
  }

  NonLoggedAuthState nonLogged() {
    return const NonLoggedAuthState();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logged,
    required TResult Function() nonLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logged,
    TResult Function()? nonLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logged,
    TResult Function()? nonLogged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedAuthState value) logged,
    required TResult Function(NonLoggedAuthState value) nonLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggedAuthState value)? logged,
    TResult Function(NonLoggedAuthState value)? nonLogged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedAuthState value)? logged,
    TResult Function(NonLoggedAuthState value)? nonLogged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $LoggedAuthStateCopyWith<$Res> {
  factory $LoggedAuthStateCopyWith(
          LoggedAuthState value, $Res Function(LoggedAuthState) then) =
      _$LoggedAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedAuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $LoggedAuthStateCopyWith<$Res> {
  _$LoggedAuthStateCopyWithImpl(
      LoggedAuthState _value, $Res Function(LoggedAuthState) _then)
      : super(_value, (v) => _then(v as LoggedAuthState));

  @override
  LoggedAuthState get _value => super._value as LoggedAuthState;
}

/// @nodoc

class _$LoggedAuthState extends LoggedAuthState {
  const _$LoggedAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.logged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logged,
    required TResult Function() nonLogged,
  }) {
    return logged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logged,
    TResult Function()? nonLogged,
  }) {
    return logged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logged,
    TResult Function()? nonLogged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedAuthState value) logged,
    required TResult Function(NonLoggedAuthState value) nonLogged,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggedAuthState value)? logged,
    TResult Function(NonLoggedAuthState value)? nonLogged,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedAuthState value)? logged,
    TResult Function(NonLoggedAuthState value)? nonLogged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class LoggedAuthState extends AuthState {
  const factory LoggedAuthState() = _$LoggedAuthState;
  const LoggedAuthState._() : super._();
}

/// @nodoc
abstract class $NonLoggedAuthStateCopyWith<$Res> {
  factory $NonLoggedAuthStateCopyWith(
          NonLoggedAuthState value, $Res Function(NonLoggedAuthState) then) =
      _$NonLoggedAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NonLoggedAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $NonLoggedAuthStateCopyWith<$Res> {
  _$NonLoggedAuthStateCopyWithImpl(
      NonLoggedAuthState _value, $Res Function(NonLoggedAuthState) _then)
      : super(_value, (v) => _then(v as NonLoggedAuthState));

  @override
  NonLoggedAuthState get _value => super._value as NonLoggedAuthState;
}

/// @nodoc

class _$NonLoggedAuthState extends NonLoggedAuthState {
  const _$NonLoggedAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.nonLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NonLoggedAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logged,
    required TResult Function() nonLogged,
  }) {
    return nonLogged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? logged,
    TResult Function()? nonLogged,
  }) {
    return nonLogged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logged,
    TResult Function()? nonLogged,
    required TResult orElse(),
  }) {
    if (nonLogged != null) {
      return nonLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoggedAuthState value) logged,
    required TResult Function(NonLoggedAuthState value) nonLogged,
  }) {
    return nonLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoggedAuthState value)? logged,
    TResult Function(NonLoggedAuthState value)? nonLogged,
  }) {
    return nonLogged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoggedAuthState value)? logged,
    TResult Function(NonLoggedAuthState value)? nonLogged,
    required TResult orElse(),
  }) {
    if (nonLogged != null) {
      return nonLogged(this);
    }
    return orElse();
  }
}

abstract class NonLoggedAuthState extends AuthState {
  const factory NonLoggedAuthState() = _$NonLoggedAuthState;
  const NonLoggedAuthState._() : super._();
}
