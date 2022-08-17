import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shephard/config/app_route.dart';
import 'package:shephard/config/providers.dart';
import 'package:shephard/config/route.dart' as routes;

void main() => runApp(ShephardApp());

class ShephardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: const MaterialApp(
        initialRoute: AppRoute.loginRoute,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: routes.route,
      ),
    );
  }
}
