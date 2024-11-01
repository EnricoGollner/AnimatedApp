import 'package:flutter/material.dart';
import 'package:rive_animation/screens/onboding/onboding_screen.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'AnimatedApp',
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFFEEF1F8),
            primarySwatch: Colors.blue,
            fontFamily: "Intel",
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(foregroundColor: Colors.white),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              filled: true,
              fillColor: Colors.white,
              errorStyle: TextStyle(height: 0),
              border: defaultInputBorder,
              enabledBorder: defaultInputBorder,
              focusedBorder: defaultInputBorder,
              errorBorder: defaultInputBorder,
            ),
          ),
          home: const OnbodingScreen(),
        );
      }
    );
  }
}

const defaultInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(
    color: Color(0xFFDEE3F2),
    width: 1,
  ),
);
