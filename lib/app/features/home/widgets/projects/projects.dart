import 'package:flutter/material.dart';
import 'package:personal_site/app/core/responsive/responsive.dart';
import 'package:personal_site/app/core/shared/app_keys.dart';
import 'package:personal_site/app/features/home/widgets/projects/projects_mobile.dart';
import 'package:personal_site/app/features/home/widgets/projects/projects_web.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: AppKeys.projects,
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.projects
            ? const ProjectsMobile()
            : const ProjectsWeb();
      },
    );
  }
}
