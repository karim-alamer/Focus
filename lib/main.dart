import 'package:flutter/material.dart';
import 'package:focus/screens/home.dart';
import 'package:focus/screens/video_call_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomePage(),
        '/video-call': (context) => const VideoCallScreen(),
      },
      title: 'Zoom Clone',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.red),
        primaryColorLight: Colors.white,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
