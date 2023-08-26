import 'package:flutter/material.dart';
import 'package:personal_site/app/core/l10n/l10n.dart';
import 'package:personal_site/app/core/shared/shared.dart';
import 'package:personal_site/app/core/tokens/tokens.dart';
import 'package:personal_site/app/widgets/images/images.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const SizedBox.square(
                dimension: 127,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: AppColors.primary,
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: ClipOval(
                      child: ImageAssetWidget(
                        AppAssets.profile,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SelectableText(
                AppTexts.get(context).angelosPanos,
                style: AppTextStyles.name,
              ),
              const SizedBox(height: 4),
              SelectableText(
                AppTexts.get(context).project1_positionInstructor,
                style: AppTextStyles.office,
              ),
              const SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}
