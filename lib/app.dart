import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipo/presentation/style/colors.dart';
import 'package:pipo/presentation/states/providers/providers.dart';
import 'package:pipo/router.dart';

class PipoApp extends StatelessWidget {
  const PipoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: repositories,
      child: MultiBlocProvider(
        providers: blocs,
        child: Builder(builder: (context) {
          return MaterialApp.router(
            title: 'Pipo',
            theme: ThemeData(
              primarySwatch: createMaterialColor(AppColors.blue),
            ),
            routerConfig: appRouter,
          );
        }),
      ),
    );
  }
}
