part of 'auth_bloc.dart';

abstract class AuthEvent {}

class ChangeEmailFieldEvent extends AuthEvent {
  final String value;

  ChangeEmailFieldEvent(this.value);
}

class ChangePrivacyPolicyStatusEvent extends AuthEvent {
  final bool value;

  ChangePrivacyPolicyStatusEvent(this.value);
}