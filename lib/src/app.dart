import 'package:beautiflower/src/pages/splash.dart';
import 'package:beautiflower/src/services/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(databaseController).theme;

    return MaterialApp(
      title: '너의 이름은',
      themeMode: (themeMode == 'dark') ? ThemeMode.dark : ThemeMode.light,
      theme: _buildLightThemeData(context),
      darkTheme: _buildDarkThemeData(context),
      home: const Splash(),
    );
  }

  ThemeData _buildDarkThemeData(BuildContext context) {
    final darkTheme = ThemeData.dark();
    return darkTheme.copyWith(
      useMaterial3: true,
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
          ),
    );
  }

  ThemeData _buildLightThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.lightGreen,
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
            titleTextStyle:
                const TextStyle(color: Colors.black54, fontSize: 20),
          ),
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.black54,
          ),
    );
  }
}
