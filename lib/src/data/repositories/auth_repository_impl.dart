import 'package:golub/src/data/sources/remote/auth_remote_source.dart';
import 'package:golub/src/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteSource _authRemoteSource;

  AuthRepositoryImpl(this._authRemoteSource);

  @override
  Future<void> authenticateByEmail(String email) async {
    return _authRemoteSource.authenticateByEmail(email);
  }
}
