import 'dart:async';

import 'package:app_stages_sample/configuration.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GlobalConfiguration _configuration;
  AuthBloc(GlobalConfiguration configuration)
      : _configuration = configuration ?? GlobalConfiguration;

  @override
  AuthState get initialState => AuthInitial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
