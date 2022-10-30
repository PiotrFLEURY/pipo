import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pipo/domain/entities/user.dart';
import 'package:pipo/presentation/colors.dart';
import 'package:pipo/presentation/home/views/pipo_card.dart';
import 'package:pipo/presentation/home/views/refresh_button.dart';
import 'package:pipo/providers/providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backgrounds = ref.watch(backgroundProvider);
    final pipos = ref.watch(pipoProvider);
    final user = ref.watch(userProvider);

    final lastBackground = backgrounds.isEmpty ? '' : backgrounds.last;
    final lastPipo = pipos.isEmpty ? '' : pipos.last.text;

    return Scaffold(
      floatingActionButton: RefreshButton(
        onPressed: () => _refresh(ref),
      ),
      backgroundColor: AppColors.light,
      body: _content(
        context,
        lastBackground,
        lastPipo,
        user,
      ),
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

  void _refresh(WidgetRef ref) {
    ref.read(backgroundProvider.notifier).generateNewOne();
    ref.read(pipoProvider.notifier).getNewPipo();
    ref.read(userProvider.notifier).getRandomUser();
  }
}
