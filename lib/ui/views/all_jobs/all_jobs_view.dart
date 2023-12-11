import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'all_jobs_viewmodel.dart';

class AllJobsView extends StackedView<AllJobsViewModel> {
  const AllJobsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AllJobsViewModel viewModel,
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
  AllJobsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllJobsViewModel();
}
