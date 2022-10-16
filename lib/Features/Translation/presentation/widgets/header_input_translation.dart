part of 'imports_translation_page.dart';

class HeaderInputTranslation extends StatelessWidget {
  const HeaderInputTranslation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return Tooltip(
      message: AppString.jsonExample,
      excludeFromSemantics: true,
      child: Row(
        children: [
          Text(
            "Input",
            style: textTheme.headline6,
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(Icons.info_outline),
          const Spacer(),
          TextButton(
            onPressed: () {
              Utils.showInfoDialog(context, child:  const DialogInstructions());
            },
            child: const Text("show Instructions"),
          ),
        ],
      ),
    );
  }
}
