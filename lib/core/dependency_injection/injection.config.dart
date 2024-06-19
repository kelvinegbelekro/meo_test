// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;

import '../../app/data/datasources/remote_data_source.dart' as _i6;
import '../../app/domain/repository/repository.dart' as _i7;
import '../../app/domain/repository_implementation/repository_impl.dart' as _i8;
import '../../app/domain/usecase/channels_usecase.dart' as _i9;
import '../../app/domain/usecase/program_usescase.dart' as _i10;
import '../../app/presentation/providers/channels_provider.dart' as _i12;
import '../../app/presentation/providers/program_provider.dart' as _i11;
import '../network_info.dart' as _i5;
import 'register_module.dart' as _i13;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.InternetConnectionChecker>(
      () => registerModule.internetConnectionChecker);
  gh.lazySingleton<_i5.NetworkInfo>(
      () => _i5.NetworkInfoImpl(gh<_i4.InternetConnectionChecker>()));
  gh.lazySingleton<_i6.RemoteDataSource>(() => _i6.RemoteDataSourceImpl(
        networkInfo: gh<_i5.NetworkInfo>(),
        dio: gh<_i3.Dio>(),
      ));
  gh.lazySingleton<_i7.Repository>(
      () => _i8.RepositoryImpl(gh<_i6.RemoteDataSource>()));
  gh.lazySingleton<_i9.GetChannelsUseCase>(
      () => _i9.GetChannelsUseCase(gh<_i7.Repository>()));
  gh.lazySingleton<_i10.GetProgramUseCase>(
      () => _i10.GetProgramUseCase(gh<_i7.Repository>()));
  gh.lazySingleton<_i11.ProgramProvider>(() =>
      _i11.ProgramProvider(getProgramUseCase: gh<_i10.GetProgramUseCase>()));
  gh.lazySingleton<_i12.ChannelsProvider>(() =>
      _i12.ChannelsProvider(getChannelsUseCase: gh<_i9.GetChannelsUseCase>()));
  return getIt;
}

class _$RegisterModule extends _i13.RegisterModule {}
