import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pipo/cubits/cubits.dart';
import 'package:pipo/domain/entities/pipo.dart';
import 'package:pipo/domain/entities/user.dart';
import 'package:pipo/presentation/colors.dart';
import 'package:pipo/presentation/home/views/pipo_card.dart';
import 'package:pipo/presentation/home/views/refresh_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PipoCubit, List<Pipo>>(
      builder: (context, pipos) {
        final lastPipo = pipos.isEmpty ? '' : pipos.last.text;
        return BlocBuilder<BackgroundCubit, List<String>>(
          builder: (context, backgrounds) {
            final lastBackground = backgrounds.isEmpty ? '' : backgrounds.last;
            return Scaffold(
              floatingActionButton: RefreshButton(
                onPressed: () => _refresh(context),
              ),
              backgroundColor: AppColors.light,
              body: BlocBuilder<UserCubit, User?>(
                builder: (context, user) => _content(
                  context,
                  lastBackground,
                  lastPipo,
                  user,
                ),
              ),
            );
          },
        );
      },
    );
  }

  /// content
  Widget _content(
    BuildContext context,
    String background,
    String pipo,
    User? user,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PipoCard(
          backgroundImage: background,
          pipoText: pipo,
          userPicture: user?.picture ?? '',
          userName: user?.fullName ?? '',
          onUserTap: () => _onUserTap(context),
          onCardTap: () => _onCardTap(context),
        ),
      ),
    );
  }

  void _onCardTap(BuildContext context) {
    GoRouter.of(context).go('/photo');
  }

  void _onUserTap(BuildContext context) {
    GoRouter.of(context).go('/user');
  }

  void _refresh(BuildContext context) {
    context.read<BackgroundCubit>().generateNewOne();
    context.read<PipoCubit>().getNewPipo();
    context.read<UserCubit>().getRandomUser();
  }
}
