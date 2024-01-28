import 'package:golub/src/data/services/dio/dio_client.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthRemoteSource {
  final DioClient dioClient;

  const AuthRemoteSource({required this.dioClient});

  static const String _pathAuthenticateByEmail = '/auth';

  Future<void> authenticateByEmail(String email) async {
    print('__source $email');
    await dioClient.post(
      _pathAuthenticateByEmail,
      data: {'email': email},
    );
  }
}
