import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pipo/presentation/style/colors.dart';
import 'package:pipo/presentation/ui/home/views/home_content.dart';
import 'package:pipo/presentation/ui/home/views/refresh_button.dart';
import 'package:pipo/presentation/states/providers/providers.dart';

/// This is the home page of the app.
///
/// Pages can:
/// - read/write state management
/// - use navigation
/// - use user events callbacks
///
/// Pages should not:
/// - perform business logic
/// - perform data fetching
/// - be a stateful widget
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPicture = ref.watch(userPictureProvider);
    final userFullName = ref.watch(userFullNameProvider);
    final lastBackground = ref.watch(latestBackgroundProvider);
    final lastPipo = ref.watch(latestPipoProvider);

    return Scaffold(
      floatingActionButton: RefreshButton(
        onPressed: () => _refresh(ref),
      ),
      backgroundColor: AppColors.light,
      body: HomeContent(
        background: lastBackground,
        pipo: lastPipo,
        userPicture: userPicture,
        userName: userFullName,
        onUserTap: () => _onUserTap(context),
        onTextTap: () => _onTextTap(context),
      ),
    );
  }

  void _onTextTap(BuildContext context) {
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
