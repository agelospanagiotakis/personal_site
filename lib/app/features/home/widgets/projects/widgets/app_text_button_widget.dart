import 'package:flutter/material.dart';
import 'package:personal_site/app/core/l10n/l10n.dart';
import 'package:personal_site/app/core/shared/shared.dart';
import 'package:personal_site/app/utils/utils.dart';
import 'package:personal_site/app/widgets/buttons/buttons.dart';

class AppTextButtonWidget extends StatelessWidget {
  const AppTextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      text: AppTexts.get(context).seeProjectsUpper,
      onPressed: () => LaunchUrls().launchURL(AppUrls.gitHub),
    );
  }
}
