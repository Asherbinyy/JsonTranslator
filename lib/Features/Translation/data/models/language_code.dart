import 'package:json_translator/Features/Translation/domain/entities/language_code.dart';

class LanguageCodeModel extends LanguageCode {
  LanguageCodeModel({
    required super.id,
    required super.code,
    required super.name,
  });

  factory LanguageCodeModel.fromJson(Map<String, dynamic> json) {
    return LanguageCodeModel(
      id: json['id'],
      code: json['code'],
      name: json['name'],
    );
  }

 static final List<LanguageCode> languages = [
    LanguageCodeModel(
      id: 0,
      code: "auto",
      name: "Automatic",
    ),
    LanguageCodeModel(
      id: 1,
      code: "af",
      name: "Afrikaans",
    ),
    LanguageCodeModel(
      id: 2,
      code: "sq",
      name: "Albanian",
    ),
    LanguageCodeModel(
      id: 3,
      code: "am",
      name: "Amharic",
    ),
    LanguageCodeModel(
      id: 4,
      code: "ar",
      name: "Arabic",
    ),
    LanguageCodeModel(
      id: 5,
      code: "hy",
      name: "Armenian",
    ),
    LanguageCodeModel(
      id: 6,
      code: "az",
      name: "Azerbaijani",
    ),
    LanguageCodeModel(
      id: 7,
      code: "eu",
      name: "Basque",
    ),
    LanguageCodeModel(
      id: 8,
      code: "be",
      name: "Belarusian",
    ),
    LanguageCodeModel(
      id: 9,
      code: "bn",
      name: "Bengali",
    ),
    LanguageCodeModel(
      id: 10,
      code: "bs",
      name: "Bosnian",
    ),
    LanguageCodeModel(
      id: 11,
      code: "bg",
      name: "Bulgarian",
    ),
    LanguageCodeModel(
      id: 12,
      code: "ca",
      name: "Catalan",
    ),
    LanguageCodeModel(
      id: 13,
      code: "ceb",
      name: "Cebuano",
    ),
    LanguageCodeModel(
      id: 14,
      code: "ny",
      name: "Chichewa",
    ),
    LanguageCodeModel(
      id: 15,
      code: "zh-cn",
      name: "Chinese Simplified",
    ),
    LanguageCodeModel(
      id: 16,
      code: "zh-tw",
      name: "Chinese Traditional",
    ),
    LanguageCodeModel(
      id: 17,
      code: "co",
      name: "Corsican",
    ),
    LanguageCodeModel(
      id: 18,
      code: "hr",
      name: "Croatian",
    ),
    LanguageCodeModel(
      id: 19,
      code: "cs",
      name: "Czech",
    ),
    LanguageCodeModel(
      id: 20,
      code: "da",
      name: "Danish",
    ),
    LanguageCodeModel(
      id: 21,
      code: "nl",
      name: "Dutch",
    ),
    LanguageCodeModel(
      id: 22,
      code: "en",
      name: "English",
    ),
    LanguageCodeModel(
      id: 23,
      code: "eo",
      name: "Esperanto",
    ),
    LanguageCodeModel(
      id: 24,
      code: "et",
      name: "Estonian",
    ),
    LanguageCodeModel(
      id: 25,
      code: "tl",
      name: "Filipino",
    ),
    LanguageCodeModel(
      id: 26,
      code: "fi",
      name: "Finnish",
    ),
    LanguageCodeModel(
      id: 27,
      code: "fr",
      name: "French",
    ),
    LanguageCodeModel(
      id: 28,
      code: "fy",
      name: "Frisian",
    ),
    LanguageCodeModel(
      id: 29,
      code: "gl",
      name: "Galician",
    ),
    LanguageCodeModel(
      id: 30,
      code: "ka",
      name: "Georgian",
    ),
    LanguageCodeModel(
      id: 31,
      code: "de",
      name: "German",
    ),
    LanguageCodeModel(
      id: 32,
      code: "el",
      name: "Greek",
    ),
    LanguageCodeModel(
      id: 33,
      code: "gu",
      name: "Gujarati",
    ),
    LanguageCodeModel(
      id: 34,
      code: "ht",
      name: "Haitian Creole",
    ),
    LanguageCodeModel(
      id: 35,
      code: "ha",
      name: "Hausa",
    ),
    LanguageCodeModel(
      id: 36,
      code: "haw",
      name: "Hawaiian",
    ),
    LanguageCodeModel(
      id: 37,
      code: "iw",
      name: "Hebrew",
    ),
    LanguageCodeModel(
      id: 38,
      code: "hi",
      name: "Hindi",
    ),
    LanguageCodeModel(
      id: 39,
      code: "hmn",
      name: "Hmong",
    ),
    LanguageCodeModel(
      id: 40,
      code: "hu",
      name: "Hungarian",
    ),
    LanguageCodeModel(
      id: 41,
      code: "is",
      name: "Icelandic",
    ),
    LanguageCodeModel(
      id: 42,
      code: "ig",
      name: "Igbo",
    ),
    LanguageCodeModel(
      id: 43,
      code: "id",
      name: "Indonesian",
    ),
    LanguageCodeModel(
      id: 44,
      code: "ga",
      name: "Irish",
    ),
    LanguageCodeModel(
      id: 45,
      code: "it",
      name: "Italian",
    ),
    LanguageCodeModel(
      id: 46,
      code: "ja",
      name: "Japanese",
    ),
    LanguageCodeModel(
      id: 47,
      code: "jw",
      name: "Javanese",
    ),
    LanguageCodeModel(
      id: 48,
      code: "kn",
      name: "Kannada",
    ),
    LanguageCodeModel(
      id: 49,
      code: "kk",
      name: "Kazakh",
    ),
    LanguageCodeModel(
      id: 50,
      code: "km",
      name: "Khmer",
    ),
    LanguageCodeModel(
      id: 51,
      code: "ko",
      name: "Korean",
    ),
    LanguageCodeModel(
      id: 52,
      code: "ku",
      name: "Kurdish (Kurmanji)",
    ),
    LanguageCodeModel(
      id: 53,
      code: "ky",
      name: "Kyrgyz",
    ),
    LanguageCodeModel(
      id: 54,
      code: "lo",
      name: "Lao",
    ),
    LanguageCodeModel(
      id: 55,
      code: "la",
      name: "Latin",
    ),
    LanguageCodeModel(
      id: 56,
      code: "lv",
      name: "Latvian",
    ),
    LanguageCodeModel(
      id: 57,
      code: "lt",
      name: "Lithuanian",
    ),
    LanguageCodeModel(
      id: 58,
      code: "lb",
      name: "Luxembourgish",
    ),
    LanguageCodeModel(
      id: 59,
      code: "mk",
      name: "Macedonian",
    ),
    LanguageCodeModel(
      id: 60,
      code: "mg",
      name: "Malagasy",
    ),
    LanguageCodeModel(
      id: 61,
      code: "ms",
      name: "Malay",
    ),
    LanguageCodeModel(
      id: 62,
      code: "ml",
      name: "Malayalam",
    ),
    LanguageCodeModel(
      id: 63,
      code: "mt",
      name: "Maltese",
    ),
    LanguageCodeModel(
      id: 64,
      code: "mi",
      name: "Maori",
    ),
    LanguageCodeModel(
      id: 65,
      code: "mr",
      name: "Marathi",
    ),
    LanguageCodeModel(
      id: 66,
      code: "mn",
      name: "Mongolian",
    ),
    LanguageCodeModel(
      id: 67,
      code: "my",
      name: "Myanmar (Burmese)",
    ),
    LanguageCodeModel(
      id: 68,
      code: "ne",
      name: "Nepali",
    ),
    LanguageCodeModel(
      id: 69,
      code: "no",
      name: "Norwegian",
    ),
    LanguageCodeModel(
      id: 70,
      code: "ps",
      name: "Pashto",
    ),
    LanguageCodeModel(
      id: 71,
      code: "fa",
      name: "Persian",
    ),
    LanguageCodeModel(
      id: 72,
      code: "pl",
      name: "Polish",
    ),
    LanguageCodeModel(
      id: 73,
      code: "pt",
      name: "Portuguese",
    ),
    LanguageCodeModel(
      id: 74,
      code: "pa",
      name: "Punjabi",
    ),
    LanguageCodeModel(
      id: 75,
      code: "ro",
      name: "Romanian",
    ),
    LanguageCodeModel(
      id: 76,
      code: "ru",
      name: "Russian",
    ),
    LanguageCodeModel(
      id: 77,
      code: "sm",
      name: "Samoan",
    ),
    LanguageCodeModel(
      id: 78,
      code: "gd",
      name: "Scots Gaelic",
    ),
    LanguageCodeModel(
      id: 79,
      code: "sr",
      name: "Serbian",
    ),
    LanguageCodeModel(
      id: 80,
      code: "st",
      name: "Sesotho",
    ),
    LanguageCodeModel(
      id: 81,
      code: "sn",
      name: "Shona",
    ),
    LanguageCodeModel(
      id: 82,
      code: "sd",
      name: "Sindhi",
    ),
    LanguageCodeModel(
      id: 83,
      code: "si",
      name: "Sinhala",
    ),
    LanguageCodeModel(
      id: 84,
      code: "sk",
      name: "Slovak",
    ),
    LanguageCodeModel(
      id: 85,
      code: "sl",
      name: "Slovenian",
    ),

    LanguageCodeModel(
      id: 86,
      code: "so",
      name: "Somali",
    ),
    LanguageCodeModel(
      id: 87,
      code: "es",
      name: "Spanish",
    ),
    LanguageCodeModel(
      id: 88,
      code: "su",
      name: "Sundanese",
    ),
    LanguageCodeModel(
      id: 89,
      code: "sw",
      name: "Swahili",
    ),
    LanguageCodeModel(
      id: 90,
      code: "sv",
      name: "Swedish",
    ),
    LanguageCodeModel(
      id: 91,
      code: "tg",
      name: "Tajik",
    ),
    LanguageCodeModel(
      id: 92,
      code: "ta",
      name: "Tamil",
    ),
    LanguageCodeModel(
      id: 93,
      code: "te",
      name: "Telugu",
    ),
    LanguageCodeModel(
      id: 94,
      code: "th",
      name: "Thai",
    ),
    LanguageCodeModel(
      id: 95,
      code: "tr",
      name: "Turkish",
    ),
    LanguageCodeModel(
      id: 96,
      code: "uk",
      name: "Ukrainian",
    ),
    LanguageCodeModel(
      id: 97,
      code: "ur",
      name: "Urdu",
    ),
    LanguageCodeModel(
      id: 98,
      code: "uz",
      name: "Uzbek",
    ),
    LanguageCodeModel(
      id: 99,
      code: "vi",
      name: "Vietnamese",
    ),
    LanguageCodeModel(
      id: 100,
      code: "cy",
      name: "Welsh",
    ),
    LanguageCodeModel(
      id: 101,
      code: "xh",
      name: "Xhosa",
    ),
    LanguageCodeModel(
      id: 102,
      code: "yi",
      name: "Yiddish",
    ),
    LanguageCodeModel(
      id: 103,
      code: "yo",
      name: "Yoruba",
    ),
    LanguageCodeModel(
      id: 104,
      code: "zu",
      name: "Zulu",
    ),

  ];
}
