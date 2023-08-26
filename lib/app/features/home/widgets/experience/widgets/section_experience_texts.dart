import 'package:flutter/material.dart';
import 'package:personal_site/app/core/l10n/l10n.dart';
import 'package:personal_site/app/features/home/widgets/experience/widgets/widgets.dart';

class SectionExperienceTexts extends StatelessWidget {
  const SectionExperienceTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleDescriptionShort(
          title: AppTexts.get(context).project1,
          description: AppTexts.get(context).project1_position,
        ),
        TitleDescriptionShort(
          title: AppTexts.get(context).project2,
          description: AppTexts.get(context).project2_position,
        ),
        TitleDescriptionShort(
          title: AppTexts.get(context).project3,
          description: AppTexts.get(context).project3_position,
        ),
        TitleDescriptionShort(
          title: AppTexts.get(context).project4,
          description: AppTexts.get(context).project4_position,
        ),
      ],
    );
  }
}
