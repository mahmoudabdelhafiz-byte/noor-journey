import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noor_journey/l10n/app_localizations.dart';
import '../../../core/widgets.dart';

class RewardScreen extends StatelessWidget { const RewardScreen({super.key}); @override Widget build(BuildContext context){ final l=AppLocalizations.of(context)!; return NoorScaffold(title:l.rewardTitle, child:ListView(padding:const EdgeInsets.all(24), children:[const Text('🏮✨', textAlign:TextAlign.center, style:TextStyle(fontSize:110)), WarmCard(child:Column(children:[Text(l.rewardTitle, textAlign:TextAlign.center, style:Theme.of(context).textTheme.headlineMedium), const SizedBox(height:12), Text(l.rewardPageAdded), Text(l.rewardBookPage, style:Theme.of(context).textTheme.titleLarge), const SizedBox(height:12), Text(l.rewardMishmishNote)])), const SizedBox(height:16), FilledButton(onPressed:()=>context.go('/notebook'), child:Text(l.openNotebook)), TextButton(onPressed:()=>context.go('/home'), child:Text(l.backToHome))]));}}
