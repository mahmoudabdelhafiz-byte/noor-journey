import 'package:flutter/material.dart';
import 'package:noor_journey/l10n/app_localizations.dart';
import '../../../core/widgets.dart';

class DailyNoorScreen extends StatelessWidget { const DailyNoorScreen({super.key}); @override Widget build(BuildContext context){ final l=AppLocalizations.of(context)!; return NoorScaffold(title:l.dailyNoorTitle, child:ListView(padding:const EdgeInsets.all(24), children:[for(final title in [l.todaysVerse,l.simpleMeaning,l.todaysAction]) WarmCard(child:Column(crossAxisAlignment:CrossAxisAlignment.start, children:[Text(title, style:Theme.of(context).textTheme.titleLarge), const SizedBox(height:8), Text(l.placeholderOnly)]))]));}}
