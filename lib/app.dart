import 'package:flutter/material.dart';
import 'package:pipo/presentation/style/theme.dart';
import 'package:pipo/router.dart';

/// This is the main widget of the app.
///
/// It is the root of the widget tree.
///
/// App can:
/// - reference routes
/// - reference theme
/// - reference translations
///
/// App should not:
/// - perform business logic
/// - perform data fetching
/// - be a stateful widget
/// - contain defintions for routes, theme or translations
class PipoApp extends StatelessWidget {
  const PipoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pipo',
      theme: appTheme,
      routerConfig: appRouter,
    );
  }
}
