import 'package:golub/src/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthByEmailUseCase {
  final AuthRepository _repository;

  AuthByEmailUseCase(this._repository);

  Future<void> call(String email) async {
    return _repository.authenticateByEmail(email);
  }
}
