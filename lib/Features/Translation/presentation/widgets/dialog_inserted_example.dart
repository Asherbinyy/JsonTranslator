
import 'package:flutter/material.dart';
import 'package:json_translator/Core/Constants/app_strings.dart';

class DialogInsertedExample extends StatelessWidget {
  const DialogInsertedExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.jsonExampleHeader,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                fontWeight: FontWeight.bold
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(AppString.jsonExample),
      ],
    );
  }
}
