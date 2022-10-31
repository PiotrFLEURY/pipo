# pipo

Example Flutter project to experiment clean code

## Purpose

Try to make clean code as much as possible in Flutter using:

* [Riverpod](https://pub.dev/packages/riverpod)
* [Freezed](https://pub.dev/packages/freezed)
* [Retrofit](https://pub.dev/packages/retrofit)
* [Go Router](https://pub.dev/packages/go_router)

## Architecture pattern

The code was organized with Clean Architecture pattern inspiration.

* [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

## Used APIs

* [Random User](https://randomuser.me/)
* [Pipotron](https://mypipotron.fr/api/)
* [Picsum](https://picsum.photos/)

## Guidelines

* Clean code
* [Effective Dart](https://dart.dev/guides/language/effective-dart)

## Custom guidelines (TO DOCUMENT)

### Tiny main

The main.dart file should be as small as possible and contain only the minimum required to run the app.

```dart

// main.dart

void main() => runApp(MyApp());

```

### Referencing App

The app.dart file should reference requirements and configuration of the app like:

* Theme
* Navigation router
* translations

```dart

// app.dart

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My app',
      theme: appTheme, // Referencing theme
      routerConfig: appRouter, // Referencing navigation router
      localizationsDelegates: appLocalizationsDelegates, // Referencing translations
      supportedLocales: appSupportedLocales, // Referencing translations
    );
  }
}
```

### Static router

Router should be defined in a dedicated file and be static.

```dart

// app_router.dart

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
```

### Static providers

Providers are the main way to access data in Riverpod. They should be defined in a dedicated file and be static.
All providers will be accessible from any ConsumerWidget in the Widget tree.

```dart

// app_providers.dart


final dioProvider = Provider((ref) => Dio());

final randomUserApiProvider = Provider(
  (ref) => RandomUserApi(
    ref.read(
      dioProvider,
    ),
  ),
);

final randomUserRepositoryProvider = Provider<UserRepository>(
  (ref) => RandomUserRepositoryImpl(
    ref.read(
      randomUserApiProvider,
    ),
  ),
);

final userProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  return UserNotifier(ref.read(randomUserRepositoryProvider));
});

final userPictureProvider = Provider<String>((ref) {
  final user = ref.watch(userProvider);

  return user?.picture ?? '';
});

final userFullNameProvider = Provider<String>((ref) {
  final user = ref.watch(userProvider);

  return user?.fullName ?? '';
});

```

### Stateful Pages

This concept cans really simplify the code and make it more readable.

Prefer consume providers in the page and not inside each widget.

This way, all the UI logic will only be located in the page.

Contained Widgets will only be responsible for displaying data.

```dart

// home_page.dart

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

```

### Agnostic Widgets

Widgets should be agnostic of the business logic.

All data computation should occur in the providers or in repositories.

That's why the concept of "Agnostic Widgets" is used in this project.

Agnostic Widgets are widgets that only matter of display data with no business logic, navigation, or page workflow.


```dart

// home_content.dart

class HomeContent extends StatelessWidget {
  final String background;
  final String pipo;
  final String userName;
  final String userPicture;
  final VoidCallback onUserTap;
  final VoidCallback onTextTap;

  const HomeContent({
    super.key,
    required this.background,
    required this.pipo,
    required this.userName,
    required this.userPicture,
    required this.onUserTap,
    required this.onTextTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PipoCard(
          background: background,
          text: PipoTextView(
            onTextTap: onTextTap,
            pipoText: pipo,
          ),
          userInfos: UserInfos(
            onUserTap: onUserTap,
            userPicture: userPicture,
            userName: userName,
          ),
        ),
      ),
    );
  }
}

```
