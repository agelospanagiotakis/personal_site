import 'package:flutter/material.dart';
import 'package:personal_site/app/core/extensions/extensions.dart';
import 'package:personal_site/app/core/l10n/l10n.dart';
import 'package:personal_site/app/core/shared/shared.dart';
import 'package:personal_site/app/features/home/widgets/experience/widgets/widgets.dart';
import 'package:personal_site/app/widgets/body/body.dart';
import 'package:personal_site/app/widgets/dividers/dividers.dart';
import 'package:personal_site/app/widgets/gradients/gradients.dart';
import 'package:personal_site/app/widgets/images/images.dart';
import 'package:personal_site/app/widgets/section/section.dart';

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const Positioned(
              top: -25,
              right: 0,
              child: ImageAssetWidget(
                AppAssets.abstractRight,
              ),
            ),
            Positioned.fill(
              child: GradientWidget(
                opacity: 0.7,
                height: context.height,
                width: context.width,
                alignment: Alignment.bottomCenter,
              ),
            ),
            MobileBody(
              children: [
                SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: AppTexts.get(context).experience,
                ),
                const SectionExperienceTexts(),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 24),
                  child: const ImageAssetWidget(
                    AppAssets.champ,
                    height: 185,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ],
        ),
        const SectionDivider(),
      ],
    );
  }
}
