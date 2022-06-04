// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:stacked_explain/main.dart';
import 'package:stacked_explain/views/login/login_view_model.dart';

void main() async{
  test("Email validation test",(){
    var loginViewModel = LoginViewModel();
    expect(loginViewModel.emailValidate(null), "Please enter an email");
    expect(loginViewModel.emailValidate(""), "Please enter an email");
    expect(loginViewModel.emailValidate("helloworld"), "Please enter an valid email");
    expect(loginViewModel.emailValidate("helloworld@gmail.com"), null);
  });

  test("Password validation test",(){
    var loginViewModel = LoginViewModel();
    expect(loginViewModel.passwordValidate(null), "Please enter a password");
    expect(loginViewModel.passwordValidate(""), "Please enter a password");
    expect(loginViewModel.passwordValidate("12345"), "Password must be at least 6 char long");
    expect(loginViewModel.passwordValidate("123456"), null);
  });
}
