import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salon Reservation',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 209, 219),

        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 209, 219),
          brightness: Brightness.light,
        ),

        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 209, 219),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black87),
          titleTextStyle: TextStyle(
            color: Colors.black87,
            fontFamily: 'sans-serif',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 6,
            shadowColor: Colors.black26,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),

        cardTheme: CardThemeData(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[100],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),

      home: HomePage(),
    );
  }
}
