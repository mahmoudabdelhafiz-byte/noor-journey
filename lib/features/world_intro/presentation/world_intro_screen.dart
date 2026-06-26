import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:noor_journey/l10n/app_localizations.dart';
import '../../../core/widgets.dart';

class WorldIntroScreen extends StatelessWidget { const WorldIntroScreen({super.key}); @override Widget build(BuildContext context){ final l=AppLocalizations.of(context)!; return NoorScaffold(title:l.worldTitle, child:Padding(padding:const EdgeInsets.all(24), child:Column(mainAxisAlignment:MainAxisAlignment.center, children:[const CharacterBadge(emoji:'🦊🔘', label:'Mishmish'), const SizedBox(height:20), WarmCard(child:Text(l.worldIntro, textAlign:TextAlign.center, style:Theme.of(context).textTheme.bodyLarge)), const SizedBox(height:24), FilledButton(onPressed:()=>context.go('/challenge/1'), child:Text(l.enterLab))]))); }}
