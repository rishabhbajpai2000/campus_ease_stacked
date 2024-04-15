import 'package:campus_ease/links/asset_links.dart';
import 'package:campus_ease/ui/common/ui_helpers.dart';
import 'package:campus_ease/ui/common/widgets/CircularButton.dart';
import 'package:campus_ease/ui/common/widgets/InputTextField.dart';
import 'package:campus_ease/ui/views/signin/signin_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'signin_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(name: 'email', validator: SignInValidators.emailValidator),
    FormTextField(
        name: 'password', validator: SignInValidators.passwordValidator),
  ],
)
class SigninView extends StackedView<SigninViewModel> with $SigninView {
  const SigninView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SigninViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: viewModel.formKey,
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        viewModel.navigateBack();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                    Image.network(ABESLogoURL)
                  ],
                ),
                const SizedBox(height: 40),
                const Center(
                  child: Text("Welcome back!",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(height: 20),
                verticalSpaceLarge,
                InputTextField(
                  controller: emailController,
                  hint: 'Email',
                  formValidator: SignInValidators.emailValidator,
                ),
                const SizedBox(height: 20),
                InputTextField(
                  controller: passwordController,
                  hint: 'Password',
                  formValidator: SignInValidators.passwordValidator,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                CircularButton(
                    text: viewModel.processing ? 'Processing...' : 'Login',
                    onPressed: () async {
                      await viewModel.logIn();
                    }),
                SizedBox(height: 20),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      viewModel.forgotPassword();
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    viewModel.navigateToSignUpView();
                  },
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Sign up",
                          style: TextStyle(
                            color: Color(0xff0974f1),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  SigninViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SigninViewModel();

  @override
  void onViewModelReady(
    SigninViewModel viewModel,
  ) async {
    syncFormWithViewModel(viewModel);
  }
}
