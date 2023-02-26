import 'package:catalog_app_in_flutter_2023/pages/Login_page.dart';
import 'package:catalog_app_in_flutter_2023/pages/homepage.dart';
import 'package:catalog_app_in_flutter_2023/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,

      darkTheme: ThemeData(brightness: Brightness.light),
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => homePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        // it means it is a home route
      },
    );
  }
}
