import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:golub/i18n/strings.g.dart';
import 'package:golub/src/domain/extenstions/string_validation_ext.dart';
import 'package:golub/src/domain/usecases/auth_by_email_usecase.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthByEmailUseCase _authByEmailUseCase;

  AuthBloc(this._authByEmailUseCase) : super(AuthState.initial()) {
    on<ChangeEmailEvent>(_changeEmailEvent);
    on<ChangePrivacyPolicyStatusEvent>(_changePrivacyPolicyStatusEvent);
    on<AuthenticateByEmailEvent>(_authenticateByEmailEvent);
    on<ClearStateEvent>(_clearStateEvent);
  }

  Future<void> _changeEmailEvent(ChangeEmailEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(email: event.value, validationError: null));
  }

  Future<void> _changePrivacyPolicyStatusEvent(
      ChangePrivacyPolicyStatusEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(privacyPolicyAccepted: event.value));
  }

  Future<void> _authenticateByEmailEvent(
      AuthenticateByEmailEvent event, Emitter<AuthState> emit) async {
    if (!state.email.isValidEmail) {
      emit(state.copyWith(validationError: t.errors.validation.invalidEmail));
      return;
    }

    emit(state.copyWith(status: AuthStatus.loading));
    try {
      await Future.delayed(const Duration(milliseconds: 2000));
      //await _authByEmailUseCase(state.email);
      emit(state.copyWith(status: AuthStatus.success));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.error, error: e.toString()));
    }
  }

  Future<void> _clearStateEvent(ClearStateEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.initial());
  }

  /// Getters
  bool get isButtonDisabled => !state.privacyPolicyAccepted || state.email.isEmpty;
}
