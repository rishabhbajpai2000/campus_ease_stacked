import 'package:campus_ease/models/Job.dart';
import 'package:campus_ease/ui/common/ui_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import "package:url_launcher/url_launcher.dart";

import 'job_details_view_viewmodel.dart';

class JobDetailsViewView extends StackedView<JobDetailsViewViewModel> {
  final Job job;
  const JobDetailsViewView({Key? key, required this.job}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    JobDetailsViewViewModel viewModel,
    Widget? child,
  ) {
    var topRowStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(job.companyName),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(right: 30, left: 30),
          children: [
            verticalSpaceMedium,
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(job.jobProfile, style: TextStyle(fontSize: 16))
                    ],
                  ),
                  verticalSpaceMedium,
                  Row(
                    children: [
                      Expanded(
                          child: Text(job.companyName,
                              textAlign: TextAlign.center, style: topRowStyle)),
                      Expanded(
                          child: Row(
                        children: [
                          Text("|", style: topRowStyle),
                          Expanded(child: Container()),
                          Text(
                            job.jobLocation,
                            style: topRowStyle,
                          ),
                          Expanded(child: Container()),
                          Text(
                            "|",
                            style: topRowStyle,
                          ),
                        ],
                      )),
                      Expanded(
                        child: Text(
                          job.expCTC,
                          textAlign: TextAlign.center,
                          style: topRowStyle,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            verticalSpaceMedium,
            JobDescriptionSection(
              heading: "Job Description",
              content: job.jobDescription,
            ),
            JobDescriptionSection(
              heading: "Website",
              content: job.webSite,
              link: true,
            ),
            JobDescriptionSection(
                heading: "Eligible Branches", content: job.eligibleBranches),
            JobDescriptionSection(heading: "Expected CTC", content: job.expCTC),
            JobDescriptionSection(
                heading: "Registration End Date", content: job.endDate),
            JobDescriptionSection(
              heading: "RegistrationLink",
              content: job.regLink,
              link: true,
            ),
            Row(
              children: [
                JobDetailsPageButton(
                  title: "Back",
                  titleColor: Color(0xff0974F1),
                  backgroundColor: Color(0xffD2E8FE),
                  onTap: () => Navigator.pop(context),
                ),
                horizontalSpaceSmall,
                JobDetailsPageButton(
                    title: "Apply",
                    titleColor: Colors.white,
                    backgroundColor: Color(0xff0974F1),
                    onTap: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  JobDetailsViewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      JobDetailsViewViewModel();
}

class JobDetailsPageButton extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color backgroundColor;
  final void Function()? onTap;
  const JobDetailsPageButton({
    super.key,
    required this.title,
    required this.titleColor,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth(context) * 0.4,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Center(
            child: Text(title, style: TextStyle(color: titleColor)),
          ),
        ),
      ),
    );
  }
}

class JobDescriptionSection extends StatelessWidget {
  final String heading;
  final String content;
  final bool link;
  const JobDescriptionSection({
    super.key,
    required this.heading,
    required this.content,
    this.link = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (link) {
          // TODO: Implement this launch URL Function
          final Uri url = Uri.parse(content);
          if (!await launchUrl(url)) {
            throw Exception('Could not launch $url');
          }
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpaceSmall,
          Text(heading,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          verticalSpaceSmall,
          Text(content, style: TextStyle(color: link ? Colors.blue : null)),
          verticalSpaceSmall
        ],
      ),
    );
  }
}
