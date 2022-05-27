import 'package:chal1/features/home/screens/home_screen.dart';
import 'package:chal1/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mapp Challenge 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (RouteSettings settings) => onGenerateRoute(settings),
      home: const HomeScreen(),
    );
  }
}
