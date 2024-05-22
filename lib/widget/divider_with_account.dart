import 'package:akrilii/enums/text_type.dart';
import 'package:akrilii/theme/theme_text.dart';
import 'package:flutter/material.dart';

class DividerWithAccount extends StatelessWidget {
  final String dividerTextMsg;
  const DividerWithAccount({
    super.key,
    required this.dividerTextMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: Divider()),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ThemeText(text: dividerTextMsg, textType: TextType.text),
          ),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}
