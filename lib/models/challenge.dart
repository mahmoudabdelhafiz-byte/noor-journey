class LocalizedText {
  const LocalizedText({required this.en, required this.ar});
  final String en;
  final String ar;
  String of(String languageCode) => languageCode == 'ar' ? ar : en;
}

class Challenge {
  const Challenge({
    required this.id,
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.hint,
  });

  final int id;
  final LocalizedText question;
  final List<LocalizedText> options;
  final LocalizedText correctAnswer;
  final LocalizedText hint;
}
