import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_explain/views/splash/splash_view_model.dart';

class SplashView extends ViewModelBuilderWidget<SplashViewModel>{

  @override
  Widget builder(BuildContext context, SplashViewModel viewModel, Widget? child) {
    // TODO: implement builder
    return const Scaffold(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }

  // --- It means splash view model ko build karry ya taky wo connect ho jay --- //
  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel(context);

  // --- Ye init hay jo start hoty hi chaly ga and isko view model may define kia hoa hay --- //
  @override
  void onViewModelReady(SplashViewModel viewModel) {
    viewModel.init();
  }

  // --- Ye true hona means ap set state allow karry ho --- //
  @override
  // TODO: implement reactive
  bool get reactive => true;
}
