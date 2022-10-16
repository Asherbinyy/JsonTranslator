
import 'package:flutter/material.dart';
import 'package:json_translator/Core/Constants/app_strings.dart';

class DialogInstructions extends StatelessWidget {
  const DialogInstructions({Key? key}) : super(key: key);

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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: AppString.jsonExampleInstruction
              .map((e) => Text(
                    "${AppString.jsonExampleInstruction.indexWhere((element) => element==e )+1}\u2002 $e",
                    style: Theme.of(context).textTheme.caption?.copyWith(
                      fontSize: 14
                    ),

                  ))
              .toList(),
        ),

      ],
    );
  }
}
