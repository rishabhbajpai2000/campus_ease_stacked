import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/links/asset_links.dart';
import 'package:campus_ease/models/Job.dart';
import 'package:campus_ease/ui/common/ui_helpers.dart';
import 'package:campus_ease/ui/common/widgets/JobsLoading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../common/widgets/Jobtile.dart';
import 'all_jobs_viewmodel.dart';
import "package:url_launcher/url_launcher.dart";

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
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
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
                Row(
                  children: [
                     Text(
                      "Hello, ${viewModel.studentName}!",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(child: Container()),
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.notifications_outlined),
                    )
                  ],
                ),
                verticalSpaceMedium,
                Image.network(dashboardBanner6),
                verticalSpaceMedium,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DashboardAnalyticsDataCard(
                      value: viewModel.jobsApplied,
                      title: "Jobs Applied",
                      valueColor: Colors.blue,
                    ),
                    DashboardAnalyticsDataCard(
                      value: viewModel.pendingApplications,
                      title: "Pending Applications",
                      valueColor: Colors.red,
                    ),
                    DashboardAnalyticsDataCard(
                      value: viewModel.upcomingJobs,
                      title: "Upcoming Jobs",
                      valueColor: Colors.blue,
                    ),
                  ],
                ),
                verticalSpaceMedium,
                const Heading(title: "Preparation Material"),
                verticalSpaceSmall,
                SizedBox(
                  height: 125,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DashboardBanner(
                        imageAddress: "MechanicalFAQ.pdf",
                        imageLink: dashboardBanner1,
                      ),
                      DashboardBanner(
                        imageAddress: "MechanicalFAQ.pdf",
                        imageLink: dashboardBanner2,
                      ),
                      DashboardBanner(
                        imageAddress: "CivilFAQ.pdf",
                        imageLink: dashboardBanner3,
                      ),
                      DashboardBanner(
                        imageAddress: "ElectricalFAQ.pdf",
                        imageLink: dashboardBanner4,
                      ),
                      DashboardBanner(
                        imageAddress: "ElectronicsFAQ.pdf",
                        imageLink: dashboardBanner5,
                      ),
                    ],
                  ),
                ),
                verticalSpaceMedium,
                Row(
                  children: [
                    const Heading(title: "Pending Job Applications"),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () async {
                        await viewModel.getJobsAndAnalytics();
                        Fluttertoast.showToast(msg: "Jobs Refreshed");
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
                  ShowJobsLoading()
                else if (viewModel.jobData?.unfilled.isEmpty ?? true)
                  const SizedBox(
                    height: 100,
                    child: Center(
                      child: Text("No Pending Applications"),
                    ),
                  ),
                SizedBox(
                  height: 120.0 * (viewModel.jobData?.unfilled.length ?? 0),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: viewModel.jobData?.unfilled.length ?? 0,
                    itemBuilder: (context, index) {
                      Job job = viewModel.jobData!.unfilled[index];
                      return JobTile(job: job);
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }

  @override
  AllJobsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AllJobsViewModel();

  @override
  void onViewModelReady(AllJobsViewModel viewModel) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      viewModel.init();
    });
  }
}

class Heading extends StatelessWidget {
  const Heading({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class DashboardAnalyticsDataCard extends StatelessWidget {
  const DashboardAnalyticsDataCard({
    super.key,
    required this.title,
    required this.value,
    required this.valueColor,
  });
  final String? value;
  final String title;
  final Color valueColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            value == null
                ? const SizedBox(
                    height: 20,
                    child: LoadingIndicator(
                      indicatorType: Indicator.lineScale,
                    ),
                  )
                : Text(
                    value!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: valueColor,
                        fontSize: 20),
                  ),
            verticalSpaceTiny,
            Text(title,
                style: const TextStyle(color: Colors.black, fontSize: 10))
          ],
        ),
      ),
    );
  }
}

class DashboardBanner extends StatelessWidget {
  final String imageLink;
  const DashboardBanner(
      {super.key, required this.imageLink, required this.imageAddress});
  final String imageAddress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () async {
              final String link =
                  "$baseImageAddress/Assets/QuestionDocs/$imageAddress";
              final Uri url = Uri.parse(link);
              if (!await launchUrl(url)) {
                Fluttertoast.showToast(msg: "Could not Load PDF");
              }
            },
            child: Image.network(imageLink)),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
