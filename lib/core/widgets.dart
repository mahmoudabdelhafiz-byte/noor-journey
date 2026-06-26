import 'package:flutter/material.dart';

class NoorScaffold extends StatelessWidget {
  const NoorScaffold({super.key, required this.child, this.title, this.actions});
  final Widget child;
  final String? title;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: title == null ? null : AppBar(title: Text(title!), backgroundColor: Colors.transparent, actions: actions),
        body: SafeArea(child: Container(decoration: const BoxDecoration(gradient: LinearGradient(colors: [Color(0xFFFFF1CF), Color(0xFFFFDFB3)], begin: Alignment.topCenter, end: Alignment.bottomCenter)), child: child)),
      );
}

class WarmCard extends StatelessWidget {
  const WarmCard({super.key, required this.child, this.onTap});
  final Widget child;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) => Card(child: InkWell(borderRadius: BorderRadius.circular(28), onTap: onTap, child: Padding(padding: const EdgeInsets.all(20), child: child)));
}

class CharacterBadge extends StatelessWidget {
  const CharacterBadge({super.key, required this.emoji, required this.label, this.size = 92});
  final String emoji;
  final String label;
  final double size;
  @override
  Widget build(BuildContext context) => Column(mainAxisSize: MainAxisSize.min, children: [Container(width: size, height: size, alignment: Alignment.center, decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle), child: Text(emoji, style: TextStyle(fontSize: size * .52))), const SizedBox(height: 8), Text(label, style: Theme.of(context).textTheme.titleLarge)]);
}
