import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Add this!
import '../../theme/theme_provider.dart'; // Correct path

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: themeProvider.isDarkMode,
            onChanged: (val) => themeProvider.toggleTheme(), // ✅ this line
          ),
        ],
      ),
    );
  }
}
