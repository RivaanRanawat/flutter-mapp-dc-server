import 'package:chal1/features/book_details/widgets/book_description_details.dart';
import 'package:flutter/material.dart';

import 'package:chal1/models/book.dart';

class BookDetailsScreen extends StatelessWidget {
  final Book book;
  static const String routeName = '/book-details';
  const BookDetailsScreen({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: size.height * 0.33,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                book.thumbnail,
                fit: BoxFit.cover,
              ),
              title: Text(
                book.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,
              ),
            ),
            pinned: true,
          ),
          BookDescriptionDetails(book: book),
        ],
      ),
    );
  }
}
