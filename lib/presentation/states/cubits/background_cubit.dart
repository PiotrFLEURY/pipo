import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

class BackgroundCubit extends Cubit<List<String>> {
  BackgroundCubit() : super([]);

  void generateNewOne() {
    final seed = Random().nextInt(42);
    final backgrounds = [
      ...state,
      'https://picsum.photos/1280?random=$seed',
    ];
    emit(backgrounds);
  }
}
