import 'package:dartlightthemefontandfadeinimage/provider/theme_provider.dart';
import 'package:dartlightthemefontandfadeinimage/widget/change_theme_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final text = context.watch<ThemeProvider>().themeMode == ThemeMode.dark
        ? "Dark Theme"
        : "Light Theme";
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(text),
        actions: [ChangeThemeButtonWidget()],
      ),
      body: Center(
        child: Text(text),
      ),
    ));
  }
}
