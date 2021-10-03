import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hack_team_flutter_app/redmine/domain/repository/redmine_repository.dart';

part 'auth_bloc.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.login({
    required String password,
    required String name,
  }) = LoginAuthEvent;

  const factory AuthEvent.logout() = LogoutAuthEvent;

  const factory AuthEvent.checkAutorization() = CheckAutorizationAuthEvent;
}

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.logged() = LoggedAuthState;

  const factory AuthState.nonLogged() = NonLoggedAuthState;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.redmineRepository) : super(const NonLoggedAuthState());
  final RedmineRepository redmineRepository;

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) =>
      event.when<Stream<AuthState>>(
        checkAutorization: _checkAutorization,
        logout: _logout,
        login: _login,
      );

  Stream<AuthState> _checkAutorization() async* {
    String token = redmineRepository.token;
    var auth = await redmineRepository.login(token);
    log(token);
    log(auth.toString());
    if (redmineRepository.onBoardingStatus) {
      if (auth) {
        yield LoggedAuthState();
      } else {
        yield NonLoggedAuthState();
      }
    }
  }

  Stream<AuthState> _login(String password, String name) async* {
    var dataAuth = {
      "site": 'http://klenin.site/',
      "user": name,
      "password": password,
    };

    var data = json.encode(dataAuth);
    print(data);

    String token = 'Bearer ' + base64Encode(utf8.encode('$data'));
    log(token);
    var resultAuth = await redmineRepository.login(token);
    print('resultAuth->$resultAuth');
    if (resultAuth) {
      redmineRepository.onBoardingActive(true);
      yield LoggedAuthState();
    } else {
      yield NonLoggedAuthState();
    }
  }

  Stream<AuthState> _logout() async* {
    redmineRepository.logout();
    redmineRepository.onBoardingActive(false);
    yield NonLoggedAuthState();
  }
}
