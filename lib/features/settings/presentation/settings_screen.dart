import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:noor_journey/l10n/app_localizations.dart';
import '../../../core/app_state.dart';
import '../../../core/widgets.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context)!;
    final s = ref.watch(appStateProvider);

    return NoorScaffold(
      title: l.settings,
      child: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          WarmCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l.languageSwitch,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                RadioListTile(
                  value: 'en',
                  groupValue: s.locale?.languageCode,
                  onChanged: (_) =>
                      ref.read(appStateProvider).setLocale(const Locale('en')),
                  title: Text(l.english),
                ),
                RadioListTile(
                  value: 'ar',
                  groupValue: s.locale?.languageCode,
                  onChanged: (_) =>
                      ref.read(appStateProvider).setLocale(const Locale('ar')),
                  title: Text(l.arabic),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          OutlinedButton(
            onPressed: () => ref.read(appStateProvider).resetProgress(),
            child: Text(l.resetProgress),
          ),
        ],
      ),
    );
  }
}
