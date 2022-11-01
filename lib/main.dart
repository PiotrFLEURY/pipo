import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pipo/app.dart';
import 'package:pipo/domain/entities/configuration.dart';
import 'package:pipo/presentation/states/providers/providers.dart';

/// The main function is the starting point for all our apps.
///
/// This file should stay really tiny.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final configuration = await loadConfiguration();
  runApp(
    ProviderScope(
      overrides: [
        configurationProvider.overrideWithValue(configuration),
      ],
      child: const PipoApp(),
    ),
  );
}

Future<Configuration> loadConfiguration() async {
  final content = json.decode(
    await rootBundle.loadString('assets/config/config.json'),
  ) as Map<String, Object?>;

  return Configuration.fromJson(content);
}
