import 'package:flutter/material.dart';
import 'package:portfolio/presentation/indexScreen.dart';
import 'package:provider/provider.dart';
import 'model/darkThemeProvider.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  @override
  _PortfolioAppState createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme = await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context,DarkThemeProvider value, Widget? child) {
          return MaterialApp(
            title: 'Iura Alexandru Mihai',
            debugShowCheckedModeBanner: false,
            themeMode: themeChangeProvider.darkTheme ? ThemeMode.dark: ThemeMode.light,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            home: IndexScreen(),
          );
        },
      ),
    );
  }
}
