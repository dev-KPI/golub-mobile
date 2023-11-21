import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<ChangeEmailFieldEvent>(_changeEmailFieldEvent);
    on<ChangePrivacyPolicyStatusEvent>(_changePrivacyPolicyStatusEvent);
  }

  _changeEmailFieldEvent(
    ChangeEmailFieldEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(email: event.value));
  }

  _changePrivacyPolicyStatusEvent(
    ChangePrivacyPolicyStatusEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(privacyPolicyAccepted: event.value));
  }

  /// Getters
  bool get isButtonDisabled => !state.privacyPolicyAccepted;
}