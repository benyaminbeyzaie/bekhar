import 'package:flutter/material.dart';

const Color primary = Color.fromARGB(255, 240, 119, 86);
const Color secondary = Color.fromARGB(255, 145, 110, 215);
const Color background = Colors.white;

ThemeData getTheme() => dayTheme();

ThemeData dayTheme() => ThemeData(
      primaryColor: primary,
      backgroundColor: background,
      scaffoldBackgroundColor: background,
      colorScheme: const ColorScheme(
        primary: primary,
        secondary: secondary,
        surface: background,
        background: background,
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black87,
        onBackground: Colors.black87,
        onError: Colors.white,
        brightness: Brightness.light,
      ),
      cardTheme: CardTheme(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(20),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(60, 60),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(12),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(60, 60),
          ),
        ),
      ),
    );

ThemeData nightTheme() => ThemeData(
      primaryColor: primary,
      backgroundColor: Color.fromARGB(255, 46, 46, 46),
      scaffoldBackgroundColor: Color.fromARGB(255, 46, 46, 46),
      colorScheme: const ColorScheme(
        primary: primary,
        secondary: secondary,
        surface: Color.fromARGB(255, 44, 44, 44),
        background: Color.fromARGB(255, 46, 46, 46),
        error: Colors.redAccent,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.white,
        brightness: Brightness.dark,
      ),
      cardTheme: CardTheme(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(12),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(60, 60),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(12),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(60, 60),
          ),
        ),
      ),
    );
