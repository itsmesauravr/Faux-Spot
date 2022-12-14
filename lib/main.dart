import 'package:faux_spot/app/provider/providers.dart';
import 'package:faux_spot/app/routes/messenger.dart';
import 'package:faux_spot/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/core/colors.dart';
import 'app/screen/splash/view/splash_view.dart';

main() {
  runApp(Providers.providers());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: whiteColor,
        fontFamily: GoogleFonts.hind().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          foregroundColor: whiteColor,
        ),
      ),
      scaffoldMessengerKey: Messenger.rootScaffoldMessengerKey,
      navigatorKey: Routes.navigatorKey,
      title: 'FauxSpot',
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
