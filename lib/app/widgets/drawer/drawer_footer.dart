import 'package:flutter/material.dart';
import 'package:personal_site/app/core/l10n/l10n.dart';
import 'package:personal_site/app/core/shared/shared.dart';
import 'package:personal_site/app/core/tokens/tokens.dart';
import 'package:personal_site/app/widgets/images/images.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
      child: SizedBox(
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const ImageAssetWidget(
              AppAssets.developer,
              height: 24,
            ),
            const SizedBox(width: 16),
            SelectableText(
              AppTexts.get(context).deepCode,
              textAlign: TextAlign.center,
              style: AppTextStyles.socialTitle,
            ),
          ],
        ),
      ),
    );
  }
}
