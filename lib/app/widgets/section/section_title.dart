import 'package:flutter/material.dart';
import 'package:personal_site/app/core/tokens/tokens.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    this.isWeb = false,
    required this.title,
    required this.paddingTop,
    required this.paddingBottom,
  });

  final bool isWeb;
  final String title;
  final double paddingTop;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: SelectableText(
        title,
        style: isWeb
            ? AppTextStyles.presentationTitleWeb
            : AppTextStyles.presentationTitle,
      ),
    );
  }
}
