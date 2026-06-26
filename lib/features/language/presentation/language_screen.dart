import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:noor_journey/l10n/app_localizations.dart';
import '../../../core/app_state.dart';
import '../../../core/widgets.dart';

class LanguageScreen extends ConsumerWidget { const LanguageScreen({super.key}); @override Widget build(BuildContext context, WidgetRef ref) { final l=AppLocalizations.of(context)!; return NoorScaffold(child: Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [const Text('🌙📚', style: TextStyle(fontSize: 80)), Text(l.chooseLanguage, style: Theme.of(context).textTheme.headlineMedium), const SizedBox(height: 24), FilledButton(onPressed: () { ref.read(appStateProvider).setLocale(const Locale('ar')); context.go('/profile'); }, child: Text(l.arabic)), const SizedBox(height: 12), FilledButton.tonal(onPressed: () { ref.read(appStateProvider).setLocale(const Locale('en')); context.go('/profile'); }, child: Text(l.english))]))); }}
