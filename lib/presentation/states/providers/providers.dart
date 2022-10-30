import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipo/presentation/states/cubits/cubits.dart';
import 'package:pipo/data/repositories/pipo_repository_impl.dart';
import 'package:pipo/data/repositories/random_user_repository_impl.dart';
import 'package:pipo/data/sources/pipotron_api.dart';
import 'package:pipo/data/sources/random_user_api.dart';
import 'package:pipo/domain/repositories/pipo_repository.dart';
import 'package:pipo/domain/repositories/user_repository.dart';

final repositories = [
  RepositoryProvider<Dio>(
    create: (_) => Dio(),
  ),
  RepositoryProvider<PipotronApi>(
    create: (context) => PipotronApi(
      context.read(),
    ),
  ),
  RepositoryProvider<RandomUserApi>(
    create: (context) => RandomUserApi(
      context.read(),
    ),
  ),
  RepositoryProvider<PipoRepository>(
    create: (context) => PipoRepositoryImpl(
      context.read(),
    ),
  ),
  RepositoryProvider<UserRepository>(
    create: (context) => RandomUserRepositoryImpl(
      context.read(),
    ),
  ),
];

final blocs = <BlocProvider>[
  BlocProvider<BackgroundCubit>(create: (_) => BackgroundCubit()),
  BlocProvider<PipoCubit>(
    create: (context) => PipoCubit(
      pipoRepository: context.read(),
    ),
  ),
  BlocProvider<UserCubit>(
    create: (context) => UserCubit(
      userRepository: context.read(),
    ),
  ),
];
