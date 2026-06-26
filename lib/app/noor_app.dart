import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:noor_journey/l10n/app_localizations.dart';

import '../core/app_state.dart';
import '../core/theme.dart';
import '../features/challenge/presentation/challenge_screen.dart';
import '../features/child_profile/presentation/child_profile_screen.dart';
import '../features/daily_noor/presentation/daily_noor_screen.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/journey_map/presentation/journey_map_screen.dart';
import '../features/language/presentation/language_screen.dart';
import '../features/notebook/presentation/notebook_screen.dart';
import '../features/reward/presentation/reward_screen.dart';
import '../features/settings/presentation/settings_screen.dart';
import '../features/world_intro/presentation/world_intro_screen.dart';

final _router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (_, __) => const SplashScreen()),
    GoRoute(path: '/language', builder: (_, __) => const LanguageScreen()),
    GoRoute(
      path: '/child-profile',
      builder: (_, __) => const ChildProfileScreen(),
    ),
    GoRoute(path: '/home', builder: (_, __) => const HomeScreen()),
    GoRoute(path: '/map', builder: (_, __) => const JourneyMapScreen()),
    GoRoute(path: '/world', builder: (_, __) => const WorldIntroScreen()),
    GoRoute(
      path: '/challenge/:id',
      builder: (_, s) => ChallengeScreen(id: int.parse(s.pathParameters['id']!)),
    ),
    GoRoute(path: '/reward', builder: (_, __) => const RewardScreen()),
    GoRoute(path: '/notebook', builder: (_, __) => const NotebookScreen()),
    GoRoute(path: '/daily-noor', builder: (_, __) => const DailyNoorScreen()),
    GoRoute(path: '/settings', builder: (_, __) => const SettingsScreen()),
  ],
);

class NoorApp extends ConsumerWidget {
  const NoorApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appStateProvider);

    return MaterialApp.router(
      title: "Noor's Journey",
      theme: NoorTheme.light,
      locale: state.locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) => Directionality(
        textDirection: state.locale?.languageCode == 'ar'
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: child!,
      ),
      routerConfig: _router,
    );
  }
}

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      if (!mounted) return;

      final appState = ref.read(appStateProvider);
      final nickname = appState.nickname;

      if (appState.locale == null) {
        context.go('/language');
      } else if (nickname == null || nickname.isEmpty) {
        context.go('/child-profile');
      } else {
        context.go('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFB45E), Color(0xFFFFF1CF)],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('🏮', style: TextStyle(fontSize: 96)),
            Text(l.arabicTitle, style: Theme.of(context).textTheme.headlineMedium),
            Text(l.appTitle, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            Text(l.splashTagline),
          ],
        ),
      ),
    );
  }
}
