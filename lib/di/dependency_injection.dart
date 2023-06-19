import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:postdioproject/all_trival/data/datasourse/local_datasourse.dart';
import 'package:postdioproject/all_trival/data/datasourse/remote_datasourse.dart';
import 'package:postdioproject/all_trival/data/repositories/repositories.dart';
import 'package:postdioproject/all_trival/domain/repositories/repositories.dart';
import 'package:postdioproject/all_trival/domain/usescase/all.dart';
import 'package:postdioproject/all_trival/domain/usescase/get_poken_usescase.dart';
import 'package:postdioproject/all_trival/presitation/bloc/all_bloc.dart';
import 'package:postdioproject/network/network.dart';

import '../all_trival/data/models/AllCountryModel.dart';

final diAllCountryModel = GetIt.instance;

Future<void> initS() async {
  diAllCountryModel.registerLazySingleton<Dio>(() => Dio());

  diAllCountryModel.registerLazySingleton(() => InternetConnectionChecker());
  diAllCountryModel.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(diAllCountryModel()));

  diAllCountryModel.registerLazySingleton(
      () => RemoteDataSourceImpl(dio: diAllCountryModel()));
  diAllCountryModel.registerLazySingleton(() => LocalDataSourceImpl());

  diAllCountryModel.registerLazySingleton<AllCountryModelRepository>(
      () => AllCountryModelRepositoryImpl(
            localDataSourseImpl: diAllCountryModel(),
            remoteDataSourseImpl: diAllCountryModel(),
            networkInfo: diAllCountryModel(),
          ));

  diAllCountryModel.registerLazySingleton(() =>
      AllCountryModelUsesCase(allCountryModelRepository: diAllCountryModel()));
  diAllCountryModel
      .registerLazySingleton(() => GetAllUseCase(diAllCountryModel()));

  diAllCountryModel.registerFactory(() => AllBloc(
      allCountryModelUsesCase: diAllCountryModel(),
      getAllUseCase: diAllCountryModel()));

  await Hive.initFlutter();
  Hive.registerAdapter(AllCountryModelAdapter());
  Hive.registerAdapter(PostalCodeAdapter());
  Hive.registerAdapter(CapitalInfoAdapter());
  Hive.registerAdapter(CoatOfArmsAdapter());
  Hive.registerAdapter(FlagsAdapter());
  Hive.registerAdapter(LanguagesAdapter());
  Hive.registerAdapter(NameAdapter());

  await Hive.openBox("AllCountryModelAdapterBox");
  await Hive.openBox("PostalCodeAdapterBox");
  await Hive.openBox("CapitalInfoAdapterBox");
  await Hive.openBox("CoatOfArmsAdapterBox");
  await Hive.openBox("FlagsAdapterBox");
  await Hive.openBox("NameAdapterBox");
}
