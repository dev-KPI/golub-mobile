part of 'auth_bloc.dart';

abstract class AuthEvent {}

class ChangeEmailEvent extends AuthEvent {
  final String value;
  ChangeEmailEvent(this.value);
}

class ChangePrivacyPolicyStatusEvent extends AuthEvent {
  final bool value;
  ChangePrivacyPolicyStatusEvent(this.value);
}

class AuthenticateByEmailEvent extends AuthEvent {}

class ClearStateEvent extends AuthEvent {}
