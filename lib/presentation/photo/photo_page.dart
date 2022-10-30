import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipo/cubits/background_cubit.dart';
import 'package:pipo/presentation/colors.dart';
import 'package:pipo/presentation/photo/views/galery.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BackgroundCubit, List<String>>(
      builder: (context, backgrounds) => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.light,
          foregroundColor: AppColors.dark,
        ),
        body: Galery(backgrounds: backgrounds),
      ),
    );
  }
}
