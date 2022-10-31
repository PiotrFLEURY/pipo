import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pipo/app.dart';

/// The main function is the starting point for all our apps.
///
/// This file should stay really tiny.
void main() {
  runApp(const ProviderScope(child: PipoApp()));
}
