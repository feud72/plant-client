import 'package:beautiflower/src/components/sign_in_button.dart';
import 'package:beautiflower/src/services/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widgetList = [_buildSwitchDarkMode(ref), const GoogleSignInButton()];

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.settings,
          color: Colors.indigo,
        ),
        title: const Text("설정"),
      ),
      body: ListView.separated(
        itemCount: widgetList.length,
        itemBuilder: (BuildContext context, int index) => widgetList[index],
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }

  Widget _buildSwitchDarkMode(WidgetRef ref) {
    final themeMode = ref.watch(databaseController).theme;

    return SwitchListTile(
      onChanged: (value) {
        ref.watch(databaseController).toggleTheme(value);
      },
      title: Row(
        children: [
          Icon(
            themeMode == 'dark' ? Icons.dark_mode : Icons.light_mode,
            color: Colors.yellow,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(themeMode == 'dark' ? "화면 밝기 : 다크 모드" : "화면 밝기 : 라이트 모드"),
        ],
      ),
      value: (themeMode == 'dark' ? true : false),
    );
  }
}
