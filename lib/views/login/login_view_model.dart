import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_explain/base/app_setup.locator.dart';
import 'package:stacked_explain/base/app_setup.router.dart';
import 'package:stacked_explain/services/auth_service.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel{

  AuthService get _authService => locator<AuthService>();

  TextEditingController emailCtr = TextEditingController();
  TextEditingController passwordCtr = TextEditingController();

  void onLoginTap(BuildContext context) async{
    if(!(Form.of(context)?.validate() ?? false)){
      return;
    }
    var result = await runBusyFuture(_authService.loginOrCreateUser(emailCtr.text, passwordCtr.text));
    if(result){
      locator<NavigationService>().pushNamedAndRemoveUntil(Routes.homeView);
    }
  }

  String? emailValidate(String? value) {
    if(value == null || value.isEmpty){
      return "Please enter an email";
    }
    if(!(value.contains("@"))){
      return "Please enter an valid email";
    }
    return null;
  }

  String? passwordValidate(String? value) {
    if(value == null || value.isEmpty){
      return "Please enter a password";
    }
    if(value.length < 6){
      return "Password must be at least 6 char long";
    }
    return null;
  }
}
