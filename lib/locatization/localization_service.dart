import 'dart:ui';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LocalizationService extends Translations {
  // Singleton instance
  static final LocalizationService _instance = LocalizationService._internal();
  factory LocalizationService() => _instance;
  LocalizationService._internal();

  // Static variables
  static const fallbackLocale = Locale('en');
  static const supportedLocales = [
    Locale('en'),
    Locale('ar'),
  ];

  // RTL languages
  static const rtlLanguages = ['ar'];

  // Cache for translations
  static final Map<String, Map<String, String>> _translations = {};

  // Get device locale
  static Locale getDeviceLocale() {
    final deviceLocale = Get.deviceLocale ?? fallbackLocale;
    print('Device Locale: $deviceLocale');
    return supportedLocales.contains(deviceLocale)
        ? deviceLocale
        : fallbackLocale;
  }

  // Check if current language is RTL
  static bool isRTL(String? languageCode) {
    return rtlLanguages.contains(languageCode);
  }

  // Initialize translations
  static Future<void> init() async {
    try {
      for (final locale in supportedLocales) {
        final jsonString = await rootBundle.loadString(
          'assets/lang/${locale.languageCode}.json',
        );

        final Map<String, dynamic> jsonMap = json.decode(jsonString);
        _translations[locale.languageCode] =
            jsonMap.map((key, value) => MapEntry(key, value.toString()));
      }
    } catch (e) {
      print('Error loading translations: $e');
      // Fallback translations
      _translations.addAll({
        'en': {'error': 'Translation not available'},
        'ar': {'error': 'الترجمة غير متوفرة'},
      });
    }
  }

  // Change locale and update app direction
  static void changeLocale(String languageCode) {
    final locale = Locale(languageCode);
    Get.updateLocale(locale);
  }

  @override
  Map<String, Map<String, String>> get keys => _translations;
}
