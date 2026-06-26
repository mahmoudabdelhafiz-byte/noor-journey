import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:noor_journey/l10n/app_localizations.dart';
import '../../../core/app_state.dart';
import '../../../core/widgets.dart';

class NotebookScreen extends ConsumerWidget { const NotebookScreen({super.key}); @override Widget build(BuildContext context, WidgetRef ref){ final l=AppLocalizations.of(context)!; final unlocked=ref.watch(appStateProvider).rewardUnlocked; return NoorScaffold(title:l.notebookTitle, child:ListView(padding:const EdgeInsets.all(24), children:[WarmCard(child:Column(children:[const Text('📖', style:TextStyle(fontSize:80)), Text(unlocked?l.rewardBookPage:l.notebookEmpty, textAlign:TextAlign.center, style:Theme.of(context).textTheme.titleLarge), if(unlocked) Padding(padding:const EdgeInsets.only(top:12), child:Text(l.rewardMishmishNote, textAlign:TextAlign.center))]))]));}}
