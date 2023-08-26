import 'package:flutter/material.dart';
import 'package:personal_site/app/core/tokens/tokens.dart';
import 'package:personal_site/app/features/home/widgets/footer/widgets/rich_text_short.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      color: AppColors.black,
      child: const RichTextShort(textAlign: TextAlign.center),
    );
  }
}
