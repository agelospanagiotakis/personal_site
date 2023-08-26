import 'package:flutter/material.dart';
import 'package:personal_site/app/core/tokens/tokens.dart';

class SectionSubtitle extends StatelessWidget {
  const SectionSubtitle({
    super.key,
    required this.title,
    required this.paddingTop,
    required this.paddingBottom,
  });

  final String title;
  final double paddingTop;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: SelectableText(
        title,
        style: AppTextStyles.presentationSubtitle,
      ),
    );
  }
}
