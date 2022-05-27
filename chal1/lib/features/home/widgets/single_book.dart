import 'package:chal1/models/book.dart';
import 'package:flutter/material.dart';

class SingleBook extends StatelessWidget {
  final Book book;
  const SingleBook({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.network(
              book.smallThumbnail,
            ),
          ),
          Text(
            book.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
