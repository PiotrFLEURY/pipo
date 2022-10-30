import 'package:flutter/material.dart';
import 'package:pipo/presentation/style/colors.dart';
import 'package:pipo/router.dart';

class PipoApp extends StatelessWidget {
  const PipoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pipo',
      theme: ThemeData(
        primarySwatch: createMaterialColor(AppColors.blue),
      ),
      routerConfig: appRouter,
    );
  }
}
