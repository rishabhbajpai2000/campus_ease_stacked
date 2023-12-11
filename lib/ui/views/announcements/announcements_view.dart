import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'announcements_viewmodel.dart';

class AnnouncementsView extends StackedView<AnnouncementsViewModel> {
  const AnnouncementsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AnnouncementsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  AnnouncementsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AnnouncementsViewModel();
}
