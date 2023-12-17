import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moncv/pages/AuthentificationPage.dart';
import 'package:moncv/pages/ThemeProvider.dart';
import 'package:moncv/pages/applicationutulisees.dart';
import 'package:moncv/pages/certificats.dart';
import 'package:moncv/pages/compethences.dart';
import 'package:moncv/pages/coordonnees.dart';
import 'package:moncv/pages/deconnexion.page.dart';
import 'package:moncv/pages/etudes.dart';
import 'package:moncv/pages/map.dart';
import 'package:moncv/pages/experiences.dart';
import 'package:moncv/pages/home.page.dart';
import 'package:moncv/pages/language.dart';
import 'package:moncv/pages/portfolio.dart';
import 'package:moncv/service.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: MyApp(),
  ),

);

class MyApp extends StatelessWidget {
  final Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => HomePage(),
    '/authentification' : (context) => AuthentificationPage(),
    '/etudes': (context) => EtudePage(),
    '/coordonnees': (context) => CoordonneesPage(),
    '/deconnexion': (context) => DeconnexionPage(),
    '/experience': (context) => ExperiencePage(),
    '/application': (context) => ApplicationutuliseePage(),
    '/compethences': (context) => CompethencesPage(),
    '/certificat': (context) => CertificatPage(),
    '/language': (context) => LanguagePage(),
    '/portfolio': (context) => PortfolioPage(),
    '/map': (context) => MapScreen(),

  };

  @override
  /*Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            SharedPreferences sharedPreferences = snapshot.data as SharedPreferences;
            bool conn = sharedPreferences.getBool('connecte') ?? false;
            if (conn) {
              return HomePage();
            }
          }
          return AuthentificationPage();
        },
      ),
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    themeMode: Provider.of<ThemeProvider>(context).isDarkMode
    ? ThemeMode.dark
        : ThemeMode.light,
    initialRoute: '/home',
    routes: routes,
    );
  }*/


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {

          SharedPreferences sharedPreferences = snapshot.data as SharedPreferences;
          bool conn = sharedPreferences.getBool('connecte') ?? false;

          return GetMaterialApp(
            translations: LanguageTranslation(),
            locale: Get.deviceLocale,
            fallbackLocale: Locale("fr","FR"),
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: Provider.of<ThemeProvider>(context).isDarkMode ? ThemeMode.dark : ThemeMode.light,
            initialRoute: conn ? '/home' : '/authentification',
            routes: routes,
          );
        } else {
          // Affichez un indicateur de chargement ou attendez
          return CircularProgressIndicator();
        }
      },
    );
  }
}

 /* @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: routes,
    );
  }
}*/
