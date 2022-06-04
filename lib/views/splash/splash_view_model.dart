import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_explain/base/app_setup.router.dart';
import 'package:stacked_explain/views/login/login_view.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../base/app_setup.locator.dart';
import '../../services/auth_service.dart';

class SplashViewModel extends BaseViewModel{

  final BuildContext context;
  SplashViewModel(this.context);

  void init() async{
    // --- isLoading wala kam karta hay --- //
    //setBusy(true);
    // --- model.isbusy kar ky view may call karny say mil jay ga loading wala scene --- //

    // ---> runBusyFuture(busyFuture);
    // --- It will true first and then execute future and then phir loading false kar dy ga --- //

    await Future.delayed(const Duration(seconds: 2));

    if(locator<AuthService>().email != null){
      locator<NavigationService>().pushNamedAndRemoveUntil(Routes.homeView);
      return;
    }
    locator<NavigationService>().pushNamedAndRemoveUntil(Routes.loginView);
  }

}