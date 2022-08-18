import 'package:flutter/material.dart';
import 'package:shephard/views/register/register.dart';
import 'package:shephard/views/terms_and_condition/terms_and_condition.dart';

import '../views/login/login.dart';
import 'app_route.dart';

Route<dynamic> route(RouteSettings settings) {
  switch (settings.name) {
    case AppRoute.loginRoute:
      return MaterialPageRoute(
        builder: (context) => Login(),
      );
      break;

    case AppRoute.registerRoute:
      return MaterialPageRoute(
        builder: (context) => Register(),
      );
      break;

    case AppRoute.termsRoute:
      return MaterialPageRoute(
        builder: (context) => TermsAndConditions(),
      );
      break;
  }
}
