import '../models/challenge.dart';

const challenges = <Challenge>[
  Challenge(
    id: 1,
    question: LocalizedText(
      ar: 'لدى مريم ٤ نجوم، وأعطاها عمر ٣ نجوم أخرى. كم نجمة أصبحت معها؟',
      en: 'Mariam has 4 stars. Omar gives her 3 more. How many stars does she have now?',
    ),
    options: [
      LocalizedText(ar: '٥', en: '5'),
      LocalizedText(ar: '٦', en: '6'),
      LocalizedText(ar: '٧', en: '7'),
      LocalizedText(ar: '٨', en: '8'),
    ],
    correctAnswer: LocalizedText(ar: '٧', en: '7'),
    hint: LocalizedText(ar: 'ابدأ من الرقم ٤ ثم عُد ٣ خطوات.', en: 'Start from 4 and count 3 more steps.'),
  ),
  Challenge(
    id: 2,
    question: LocalizedText(
      ar: 'الأرقام هربت من لوحة الخوارزمي! ما الرقم الناقص؟ ٢، ٤، ٦، __',
      en: "The numbers escaped from Al-Khwarizmi’s board! What number is missing? 2, 4, 6, __",
    ),
    options: [
      LocalizedText(ar: '٧', en: '7'),
      LocalizedText(ar: '٨', en: '8'),
      LocalizedText(ar: '٩', en: '9'),
      LocalizedText(ar: '١٠', en: '10'),
    ],
    correctAnswer: LocalizedText(ar: '٨', en: '8'),
    hint: LocalizedText(ar: 'كل مرة نضيف ٢.', en: 'Each time, we add 2.'),
  ),
  Challenge(
    id: 3,
    question: LocalizedText(
      ar: 'روبو جمال يريد الوصول إلى التمرة. ما اسم الخطوات المرتبة التي تساعده؟',
      en: 'Robo-Jamal wants to reach the date. What do we call ordered steps that help him?',
    ),
    options: [
      LocalizedText(ar: 'خوارزمية', en: 'Algorithm'),
      LocalizedText(ar: 'فوضى', en: 'Mess'),
      LocalizedText(ar: 'صدفة', en: 'Accident'),
      LocalizedText(ar: 'لون', en: 'Color'),
    ],
    correctAnswer: LocalizedText(ar: 'خوارزمية', en: 'Algorithm'),
    hint: LocalizedText(ar: 'الخوارزمية هي خطوات مرتبة لحل مشكلة.', en: 'An algorithm is a set of ordered steps to solve a problem.'),
  ),
];
