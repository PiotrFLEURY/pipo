import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pipo/app.dart';
import 'package:pipo/core/context.dart';

void main() {
  runApp(ProviderScope(
    child: AppContext(
      child: const PipoApp(),
    ),
  ));
}
