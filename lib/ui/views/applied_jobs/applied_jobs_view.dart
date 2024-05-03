import 'package:campus_ease/links/asset_links.dart';
import 'package:campus_ease/models/Job.dart';
import 'package:campus_ease/services/JobData.dart';
import 'package:campus_ease/ui/common/ui_helpers.dart';
import 'package:campus_ease/ui/common/widgets/JobsLoading.dart';
import 'package:campus_ease/ui/views/all_jobs/all_jobs_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';

import '../../common/widgets/Jobtile.dart';
import 'applied_jobs_viewmodel.dart';

class AppliedJobsView extends StackedView<AppliedJobsViewModel> {
  const AppliedJobsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppliedJobsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: ListView(
          children: [
            verticalSpaceSmall,
            Row(
              children: [
                const Text(
                  "C a m p u s E a s e",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff565fc6)),
                ),
                Expanded(child: Container()),
                Image.network(ABESLogoURL)
              ],
            ),
            verticalSpaceSmall,
            Row(
              children: [
                const DashboardHeading(title: "My Applications"),
                Expanded(child: Container()),
                GestureDetector(
                  onTap: () async {
                    viewModel.jobData = null;
                    viewModel.notifyListeners();
                    await viewModel.init();
                    Fluttertoast.showToast(msg: "Refreshed");
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Icon(Icons.refresh_rounded),
                  ),
                ),
                horizontalSpaceSmall
              ],
            ),
            verticalSpaceSmall,
            if (viewModel.jobData == null)
              const ShowJobsLoading()
            else if (viewModel.jobData?.filled.isEmpty ?? true)
              const SizedBox(
                height: 100,
                child: Center(
                  child: Text("No Jobs Applied Applications"),
                ),
              ),
            SizedBox(
              height: 120.0 * (viewModel.jobData?.filled.length ?? 0),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: viewModel.jobData?.filled.length ?? 0,
                itemBuilder: (context, index) {
                  Job job = viewModel.jobData!.filled[index];
                  return JobTile(job: job, showApplyButton: false);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  AppliedJobsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppliedJobsViewModel();

  @override
  void onViewModelReady(AppliedJobsViewModel viewModel) {
    viewModel.init();
  }
}

class DashboardHeading extends StatelessWidget {
  const DashboardHeading({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
