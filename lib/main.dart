import 'package:clock_analog/models/my_theme_provider.dart';
import 'package:clock_analog/screens/home_screen/home_screen.dart';
import 'package:clock_analog/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyThemeModel(),
      child:  Consumer <MyThemeModel> (builder: (context,theme,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Analog Clock',
        theme:themeData(context) ,
        darkTheme: darkThemeData(context),
        themeMode: theme.isLightTheme? ThemeMode.light: ThemeMode.dark,
        home: HomeScreen(),
      ), ),
    ) ;
  }
}

