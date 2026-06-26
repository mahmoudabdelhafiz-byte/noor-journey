import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noor_journey/l10n/app_localizations.dart';
import '../../../core/widgets.dart';

class JourneyMapScreen extends StatelessWidget { const JourneyMapScreen({super.key}); @override Widget build(BuildContext context){ final l=AppLocalizations.of(context)!; return NoorScaffold(title:l.journeyMap, child:ListView(padding:const EdgeInsets.all(24), children:[WarmCard(onTap:()=>context.go('/world'), child:Column(children:[const Text('🧪✨', style:TextStyle(fontSize:72)), Text(l.worldTitle, style:Theme.of(context).textTheme.headlineMedium)])), const SizedBox(height:20), for(final n in [1,2,3]) WarmCard(onTap:()=>context.go('/challenge/$n'), child:Row(children:[CircleAvatar(child:Text('$n')), const SizedBox(width:16), Text(l.challengeNode(n), style:Theme.of(context).textTheme.titleLarge)])), const WarmCard(child:Text('🔒 More worlds soon'))]));}}
