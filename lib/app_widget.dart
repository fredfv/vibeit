import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vibeit/src/model/color_outlet.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My Smart App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorOutlet.primary,
          foregroundColor: ColorOutlet.secondary,
          shadowColor: Colors.transparent,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: ColorOutlet.primary,
          selectedItemColor: ColorOutlet.accent,
          unselectedItemColor: ColorOutlet.secondary,
        ),
        scaffoldBackgroundColor: ColorOutlet.primary,
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
