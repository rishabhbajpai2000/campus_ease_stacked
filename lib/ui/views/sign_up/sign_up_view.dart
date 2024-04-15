import 'package:campus_ease/links/asset_links.dart';
import 'package:campus_ease/ui/common/ui_helpers.dart';
import 'package:campus_ease/ui/common/widgets/InputTextField.dart';
import 'package:campus_ease/ui/views/sign_up/sign_up_view.form.dart';
import 'package:campus_ease/ui/views/signin/signin_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'sign_up_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(name: 'email', validator: SignUpValidators.emailValidator),
    FormTextField(
        name: 'password', validator: SignUpValidators.passwordValidator),
    FormTextField(name: 'confirmPassword')
  ],
)
class SignUpView extends StackedView<SignUpViewModel> with $SignUpView {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignUpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
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
                verticalSpaceLarge,
                const Text("Create your account",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                verticalSpaceLarge,
                InputTextField(
                  controller: emailController,
                  hint: "College Email Address",
                  formValidator: SignUpValidators.emailValidator,
                ),
                const SizedBox(height: 20),
                InputTextField(
                  controller: passwordController,
                  hint: "Password",
                  formValidator: SignUpValidators.passwordValidator,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    await viewModel.signUp();
                  },
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff0974f1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: viewModel.processing
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text("Get Started",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white)),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  SignUpViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SignUpViewModel();

  @override
  void onViewModelReady(
    SignUpViewModel viewModel,
  ) async {
    syncFormWithViewModel(viewModel);
  }
}
