import 'package:flutter/material.dart';

import '../login/login.dart';
import 'app_route.dart';

Route<dynamic> route(RouteSettings settings) {
  switch (settings.name) {
    case AppRoute.loginRoute:
      return MaterialPageRoute(builder: (context) => Login());
      break;
  }
}
