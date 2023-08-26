import 'package:flutter/material.dart';
import 'package:personal_site/app/core/tokens/tokens.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: 2,
    );
  }
}
