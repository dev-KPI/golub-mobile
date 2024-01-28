import 'package:get_it/get_it.dart';
import 'package:golub/src/data/repositories/auth_repository_impl.dart';
import 'package:golub/src/data/services/dio/dio_client.dart';
import 'package:golub/src/data/sources/remote/auth_remote_source.dart';
import 'package:golub/src/domain/blocs/auth/auth_bloc.dart';
import 'package:golub/src/domain/repositories/auth_repository.dart';
import 'package:golub/src/domain/usecases/auth_by_email_usecase.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  getIt.registerSingleton<DioClient>(DioClient(baseUrl: 'https://google.com'));
  getIt.registerSingleton<AuthRemoteSource>(
      AuthRemoteSource(dioClient: getIt<DioClient>()));
  getIt.registerSingleton<AuthRepository>(
      AuthRepositoryImpl(getIt<AuthRemoteSource>()));
  getIt.registerSingleton<AuthByEmailUseCase>(
      AuthByEmailUseCase(getIt<AuthRepository>()));
  getIt.registerFactory<AuthBloc>(() => AuthBloc(getIt<AuthByEmailUseCase>()));
}
