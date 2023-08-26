import 'package:flutter/material.dart';
import 'package:personal_site/app/core/l10n/l10n.dart';
import 'package:personal_site/app/core/tokens/tokens.dart';
import 'package:personal_site/app/widgets/app_bar/widgets/widgets.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      surfaceTintColor: AppColors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WebAppBarTitle(
            title: AppTexts.get(context).home,
            index: 0,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: AppTexts.get(context).projects,
            index: 1,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: AppTexts.get(context).experience,
            index: 2,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: AppTexts.get(context).socialLinks,
            index: 3,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: AppTexts.get(context).contact,
            index: 4,
            itemScrollController: itemScrollController,
          ),
        ],
      ),
    );
  }
}
