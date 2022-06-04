import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import '../views/splash/splash_view.dart';
import 'app_setup.router.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        navigatorKey: StackedService.navigatorKey,
        // Construct the StackedRouter and set the onGenerateRoute function
        onGenerateRoute: StackedRouter().onGenerateRoute,
        home: SplashView()
    );
  }
}
