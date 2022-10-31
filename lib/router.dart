import 'package:go_router/go_router.dart';
import 'package:pipo/presentation/ui/home/home_page.dart';
import 'package:pipo/presentation/ui/photo/photo_page.dart';
import 'package:pipo/presentation/ui/user/user_page.dart';

/// This is the router definition of the app.
///
/// Router can:
/// - define routes
/// - define redirections
/// - reference navigation controls
/// - reference pages
///
/// Router should not:
/// - perform business logic
/// - perform data fetching
/// - reference state management
/// - reference any other widget type than pages
///
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
