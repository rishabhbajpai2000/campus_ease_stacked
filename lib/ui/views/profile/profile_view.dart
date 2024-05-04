import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Row(
          children: [
            horizontalSpaceMedium,
            const Text(
              'Profile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                viewModel.logOut();
              },
              child: const Text(
                "Log out",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            horizontalSpaceMedium,
          ],
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: ListView(
          children: [
            verticalSpaceMedium,
            CircleAvatar(
              backgroundColor: Colors.grey.shade100,
              radius: 70,
              child: Image.asset(
                viewModel.student?.imageUrl ?? "assets/profile.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            verticalSpaceMedium,
            const Center(child: EditProfileButton()),
            verticalSpaceMedium,
            ProfileDetailsRow(
              title: "Name",
              value: viewModel.student?.firstName ?? "Loading...",
            ),
            ProfileDetailsRow(
                title: "College Email ID",
                value: viewModel.student?.email ?? "Loading..."),
            ProfileDetailsRow(
                title: "Roll Number",
                value: viewModel.student?.rollNumber ?? "Loading..."),
            ProfileDetailsRow(
                title: "Branch",
                value: viewModel.student?.branch ?? "Loading..."),
            ProfileDetailsRow(
                title: "SGPA", value: viewModel.student?.sgpa ?? "Loading..."),
            ProfileDetailsRow(
                title: "Percentage",
                value: viewModel.student?.percentage ?? "Loading..."),
            verticalSpaceMedium
          ],
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();

  @override
  void onViewModelReady(ProfileViewModel viewModel) {
    viewModel.getProfileDetails();
  }
}

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationService().navigateTo(Routes.registrationDetailsView);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2,
            )),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Edit Profile",
              style: TextStyle(fontSize: 15, color: Colors.black)),
        ),
      ),
    );
  }
}

class ProfileDetailsRow extends StatelessWidget {
  const ProfileDetailsRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        verticalSpaceSmall,
        Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade200,
                  width: 2,
                )),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(value),
            )),
        verticalSpaceSmall
      ],
    );
  }
}
