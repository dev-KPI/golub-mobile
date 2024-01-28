// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:golub/src/data/repositories/auth_repository_impl.dart' as _i6;
import 'package:golub/src/data/services/dio/dio_client.dart' as _i3;
import 'package:golub/src/data/sources/remote/auth_remote_source.dart' as _i4;
import 'package:golub/src/domain/blocs/auth/auth_bloc.dart' as _i8;
import 'package:golub/src/domain/repositories/auth_repository.dart' as _i5;
import 'package:golub/src/domain/usecases/auth_by_email_usecase.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.DioClient>(_i3.DioClient(baseUrl: gh<String>()));
    gh.singleton<_i4.AuthRemoteSource>(
        _i4.AuthRemoteSource(dioClient: gh<_i3.DioClient>()));
    gh.factory<_i5.AuthRepository>(
        () => _i6.AuthRepositoryImpl(gh<_i4.AuthRemoteSource>()));
    gh.factory<_i7.AuthByEmailUseCase>(
        () => _i7.AuthByEmailUseCase(gh<_i5.AuthRepository>()));
    gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(gh<_i7.AuthByEmailUseCase>()));
    return this;
  }
}
