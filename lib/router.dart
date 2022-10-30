import 'package:go_router/go_router.dart';
import 'package:pipo/presentation/ui/home/home_page.dart';
import 'package:pipo/presentation/ui/photo/photo_page.dart';
import 'package:pipo/presentation/ui/user/user_page.dart';

final GoRouter appRouter = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'user',
          builder: (context, state) => const UserPage(),
        ),
        GoRoute(
          path: 'photo',
          builder: (context, state) => const PhotoPage(),
        )
      ],
    ),
  ],
  //errorBuilder: (context, state) => ErrorScreen(state.error),
);
