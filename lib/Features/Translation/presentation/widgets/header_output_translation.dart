part of 'imports_translation_page.dart';

class HeaderOutputTranslation extends StatelessWidget {
  const HeaderOutputTranslation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return   Text(
      "Output",
      style: textTheme.headline6,
    );
  }
}
