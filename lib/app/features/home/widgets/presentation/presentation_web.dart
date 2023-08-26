import 'package:flutter/material.dart';
import 'package:personal_site/app/core/extensions/extensions.dart';
import 'package:personal_site/app/core/l10n/l10n.dart';
import 'package:personal_site/app/core/mixins/mixins.dart';
import 'package:personal_site/app/core/shared/shared.dart';
import 'package:personal_site/app/features/home/widgets/presentation/widgets/widgets.dart';
import 'package:personal_site/app/widgets/body/body.dart';
import 'package:personal_site/app/widgets/dividers/dividers.dart';
import 'package:personal_site/app/widgets/gradients/gradients.dart';
import 'package:personal_site/app/widgets/images/images.dart';
import 'package:personal_site/app/widgets/section/section.dart';
import 'package:personal_site/app/widgets/utils_widgets/utils_widgets.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class PresentationWeb extends StatelessWidget with ResponsivePositionMixin {
  const PresentationWeb(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              child: GradientWidget(
                radius: 0.7,
                height: context.height,
                width: context.width,
                alignment: Alignment(
                  gradientPresentationWidthAlignment(constraints.maxWidth),
                  0,
                ),
              ),
            ),
            Positioned.fill(
              child: ImageAssetWidget(
                AppAssets.presentationTextureLarge,
                height: context.height,
                width: context.width,
              ),
            ),
            SingleChildScrollViewWithoutScroll(
              child: Column(
                children: [
                  WebBody(
                    children: [
                      SectionTitle(
                        isWeb: true,
                        paddingTop: 50,
                        paddingBottom: 12,
                        title: AppTexts.get(context).hiIAmangelosPanos,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SectionSubtitle(
                                  paddingTop: 0,
                                  paddingBottom: 32,
                                  title: AppTexts.get(context).appsDeveloper,
                                ),
                                const SizedBox(
                                  width: 400,
                                  child: GradientDivider(),
                                ),
                                SizedBox(
                                  child: Center(
                                    child: SectionText(
                                      paddingTop: 32,
                                      paddingBottom: 32,
                                      title: AppTexts.get(context)
                                          .developerFocused,
                                    ),
                                  ),
                                ),
                                const Phrase(),
                              ],
                            ),
                          ),
                          const SizedBox(width: 24),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(top: 24),
                              child: const ImageAssetWidget(
                                AppAssets.presentationWeb,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 60),
                    ],
                  ),
                  PresentationDivider(itemScrollController),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
