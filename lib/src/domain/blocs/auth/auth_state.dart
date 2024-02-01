part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    @Default('') String email,
    @Default(null) String? validationError,
    @Default(null) String? error,
    @Default(false) bool privacyPolicyAccepted,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState();
}
