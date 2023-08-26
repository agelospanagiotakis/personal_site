import 'package:flutter/material.dart';
import 'package:personal_site/app/core/responsive/responsive.dart';
import 'package:personal_site/app/widgets/app_bar/app_bar.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.appBar
            ? const MobileAppBar()
            : WebAppBar(itemScrollController);
      },
    );
  }
}
