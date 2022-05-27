import 'package:chal1/features/book_details/screens/book_details_screen.dart';
import 'package:chal1/models/book.dart';
import 'package:chal1/utils/error_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case BookDetailsScreen.routeName:
      final book = settings.arguments as Book;
      return MaterialPageRoute(
        builder: (context) => BookDetailsScreen(book: book),
        settings: settings,
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(
            error: 'This page doesn\'t exist',
          ),
        ),
        settings: settings,
      );
  }
}
