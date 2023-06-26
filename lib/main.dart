import 'package:flutter/material.dart';
import 'package:flutter_quiz/pages/home_page.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:google_fonts/google_fonts.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.openSansCondensedTextTheme(
          Theme.of(context).textTheme,
        ),
        fontFamily: 'Georgia',
      ),
      home: HomePage(),
    );
  }
}
