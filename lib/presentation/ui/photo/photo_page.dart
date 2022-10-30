import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pipo/presentation/style/colors.dart';
import 'package:pipo/presentation/ui/photo/views/galery.dart';
import 'package:pipo/presentation/states/providers/providers.dart';

class PhotoPage extends ConsumerWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backgrounds = ref.watch(backgroundProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.light,
        foregroundColor: AppColors.dark,
      ),
      body: Galery(backgrounds: backgrounds),
    );
  }
}
