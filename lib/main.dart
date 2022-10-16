import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_translator/Core/Themes/imports_themes.dart';
 import 'package:json_translator/Features/Translation/presentation/pages/translation_screen.dart';
import 'package:json_translator/Parent/general.dart';


final helloWorldProvider = Provider((ref) => "Hello",);


void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends GeneralWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
       child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Json Translator',
        theme: ThemeManager.light,
        darkTheme: ThemeManager.dark,
        themeMode: ThemeMode.light,
        home: const TranslationScreen(),
      ),
    );
  }
}


