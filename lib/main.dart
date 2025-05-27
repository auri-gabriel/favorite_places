import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:favorite_places/screens/places.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 60, 180, 144),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 60, 180, 144),
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: kDarkColorScheme.surface,
  colorScheme: kDarkColorScheme,
  textTheme: GoogleFonts.interTextTheme().copyWith(
    titleSmall: GoogleFonts.inter(fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.inter(fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.inter(fontWeight: FontWeight.bold),
  ),
);

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: theme,
      home: PlacesScreen(),
    );
  }
}
