import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:noor_journey/l10n/app_localizations.dart';
import '../../../core/app_state.dart';
import '../../../core/widgets.dart';

class ChildProfileScreen extends ConsumerStatefulWidget { const ChildProfileScreen({super.key}); @override ConsumerState<ChildProfileScreen> createState()=>_S(); }
class _S extends ConsumerState<ChildProfileScreen>{ final c=TextEditingController(); String avatar='🧒🏽'; @override Widget build(BuildContext context){ final l=AppLocalizations.of(context)!; return NoorScaffold(title: l.chooseAvatar, child: ListView(padding: const EdgeInsets.all(24), children:[TextField(controller:c, decoration: InputDecoration(labelText:l.nicknameLabel, hintText:l.nicknameHint, filled:true, border:OutlineInputBorder(borderRadius:BorderRadius.circular(20)))), const SizedBox(height:24), Text(l.chooseAvatar, style:Theme.of(context).textTheme.titleLarge), const SizedBox(height:12), Wrap(spacing:12, children:['🧒🏽','👧🏻','🦊','🤖'].map((e)=>ChoiceChip(label:Text(e, style:const TextStyle(fontSize:32)), selected:avatar==e, onSelected:(_)=>setState(()=>avatar=e))).toList()), const SizedBox(height:32), FilledButton(onPressed:(){ref.read(appStateProvider).saveProfile(nickname:c.text, avatar:avatar); context.go('/home');}, child:Text(l.saveProfile))]));}}
