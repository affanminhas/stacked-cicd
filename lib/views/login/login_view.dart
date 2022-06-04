import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_explain/views/login/login_view_model.dart';

class LoginView extends ViewModelBuilderWidget<LoginViewModel>{


  @override
  Widget builder(BuildContext context, LoginViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Form(
        child: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  TextFormField(
                    controller: viewModel.emailCtr,
                    validator: viewModel.emailValidate,
                    decoration: const InputDecoration(
                      hintText: "Email Address"
                    ),
                  ),
                  TextFormField(
                    controller: viewModel.passwordCtr,
                    validator: viewModel.passwordValidate,
                    decoration: const InputDecoration(
                        hintText: "Password",
                    ),
                    obscureText: true,
                  ),
                  ElevatedButton(onPressed: () => viewModel.onLoginTap(context), child: const Text("Login"))
                ],
              ),
            );
          }
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();

}