import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:noor_journey/l10n/app_localizations.dart';
import '../../../core/app_state.dart';
import '../../../core/widgets.dart';

class HomeScreen extends ConsumerWidget { const HomeScreen({super.key}); @override Widget build(BuildContext context, WidgetRef ref){ final l=AppLocalizations.of(context)!; final s=ref.watch(appStateProvider); return NoorScaffold(title:l.appTitle, actions:[IconButton(onPressed:()=>context.push('/settings'), icon:const Icon(Icons.settings))], child:ListView(padding:const EdgeInsets.all(24), children:[WarmCard(child:Column(children:[CharacterBadge(emoji:s.avatar,label:l.helloChild(s.nickname)), const SizedBox(height:12), const CharacterBadge(emoji:'🧒🏽🏮', label:'Noor'), Text(l.homeSubtitle, textAlign:TextAlign.center)])), const SizedBox(height:16), FilledButton(onPressed:()=>context.go('/map'), child:Text(l.startJourney)), TextButton(onPressed:()=>context.push('/daily-noor'), child:Text(l.dailyNoor)), TextButton(onPressed:()=>context.push('/notebook'), child:Text(l.notebook))]));}}
