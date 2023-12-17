import 'package:get/get.dart';



class LanguageTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      'title': 'Experience',
      'langue': 'Language',
      'stageTitle1': 'Internship - Tunisian Post',
      'stageTitle2': 'Advanced Internship - Business Software',
      'duration': 'un moins',
    },
    'fr': {
      'title': 'Expérience',
      'langue': 'Langue',
      'stageTitle1': 'Stage d\'initiation - Poste Tunisienne',
      'stageTitle2': 'Stage de Perfectionnement - Business Software',
      'duration': 'one mounth ',
    },
    'ar': {
      'title': 'التجربة',
      'langue': 'اللغة',
      'stageTitle1': 'التدريب الصيفي - البريد التونسي',
      'stageTitle2': 'التدريب المتقدم - برمجيات الأعمال',
      'duration': 'شهر واحد',
    },
  };
}