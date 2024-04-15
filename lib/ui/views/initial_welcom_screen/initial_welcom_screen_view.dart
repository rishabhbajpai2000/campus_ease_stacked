import 'package:campus_ease/ui/common/widgets/CircularButton.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'initial_welcom_screen_viewmodel.dart';
import 'package:campus_ease/links/asset_links.dart';

class InitialWelcomScreenView
    extends StackedView<InitialWelcomScreenViewModel> {
  const InitialWelcomScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InitialWelcomScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "C a m p u s E a s e",
                    style: TextStyle(
                      color: Color(0XFF8e97fd),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Image.network(ABESLogoURL)
                ],
              ),
              const SizedBox(height: 40),
              Image.network(initialWelcomeScreenCenterImage),
              const SizedBox(height: 40),
              const Text("GET HIRED NOW",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text(
                  "Streamlining your placement journey with placement study material , Job updates and alumni connects .",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 40),
              CircularButton(
                text: "SIGN UP",
                onPressed: () {
                  viewModel.navigateToSignUpView();
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "ALREADY HAVE AN ACCOUNT? ",
                    style: TextStyle(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      viewModel.navigateToSignInView();
                    },
                    child: const Text(
                      "LOG IN",
                      style: TextStyle(fontSize: 14, color: Color(0xff0974f1)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  InitialWelcomScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InitialWelcomScreenViewModel();
}
