import 'dart:convert';
import 'package:chal1/models/book.dart';
import 'package:chal1/utils/asset_utils.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final booksRepositoryProvider = Provider<BooksRepository>(
  (_) => BooksRepository(),
);

class BooksRepository {
  Future<List<Book>> loadBooksFromJSON() async {
    final List<Book> books = [];
    String loadedJsonString =
        await rootBundle.loadString(AssetUtils.flutterBooksJSON);

    for (var bookJson in jsonDecode(loadedJsonString)) {
      Book book = Book.fromJson(bookJson);
      books.add(book);
    }
    return books;
  }
}
