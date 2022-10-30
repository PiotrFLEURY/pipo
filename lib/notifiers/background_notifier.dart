import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class BackgroundNotifier extends StateNotifier<List<String>> {
  BackgroundNotifier() : super([]);

  void generateNewOne() {
    final seed = Random().nextInt(42);
    state = [
      ...state,
      'https://picsum.photos/1280?random=$seed',
    ];
  }
}
