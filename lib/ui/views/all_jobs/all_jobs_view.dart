import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/links/asset_links.dart';
import 'package:campus_ease/models/Job.dart';
import 'package:campus_ease/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

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
                    const Text(
                      "Hello, Student!",
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
                // TODO: implement a gesture detector for this. 
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
                const DashboardHeading(title: "Preparation Material"),
                verticalSpaceSmall,
                SizedBox(
                  height: 125,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DashboardBanner(
                        onTap: viewModel.onTapBanner,
                        imageLink: dashboardBanner1,
                      ),
                      DashboardBanner(
                        onTap: viewModel.onTapBanner,
                        imageLink: dashboardBanner2,
                      ),
                      DashboardBanner(
                        onTap: viewModel.onTapBanner,
                        imageLink: dashboardBanner3,
                      ),
                      DashboardBanner(
                        onTap: viewModel.onTapBanner,
                        imageLink: dashboardBanner4,
                      ),
                      DashboardBanner(
                        onTap: viewModel.onTapBanner,
                        imageLink: dashboardBanner5,
                      ),
                    ],
                  ),
                ),
                verticalSpaceMedium,
                Row(
                  children: [
                    const DashboardHeading(title: "Pending Job Applications"),
                    Expanded(child: Container()),
                    const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.refresh_rounded),
                    ),
                    horizontalSpaceSmall
                  ],
                ),
                verticalSpaceSmall,
                SizedBox(
                  height: 130.0 * (viewModel.jobData?.filled.length ?? 0),
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

class JobTile extends StatelessWidget {
  const JobTile({
    super.key,
    required this.job,
  });

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceTiny,
                Text(
                  "${job.jobProfile} | ${job.companyName}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                verticalSpaceTiny,
                Text(
                  "${job.expCTC} LPA | Full Time | ${job.jobLocation}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Deadline: ${job.endDate}",
                    ),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        NavigationService()
                            .navigateToJobDetailsViewView(job: job);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff0974f0),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          child: Text(
                            "View Details",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
  final void Function()? onTap;
  final String imageLink;
  const DashboardBanner({
    super.key,
    required this.onTap,
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(onTap: onTap, child: Image.network(imageLink)),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}
