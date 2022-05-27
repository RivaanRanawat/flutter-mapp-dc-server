import 'dart:convert';

Book bookFromJson(String str) => Book.fromJson(json.decode(str));

class Book {
  Book({
    required this.id,
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.language,
    required this.smallThumbnail,
    required this.thumbnail,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  String id;
  String title;
  List<String> authors;
  String publisher;
  String publishedDate;
  String description;
  String language;
  String smallThumbnail;
  String thumbnail;
  String previewLink;
  String infoLink;
  String canonicalVolumeLink;

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"] ?? '',
        title: json["title"] ?? '',
        authors: List<String>.from(
            json["authors"] == null ? [] : json["authors"].map((x) => x)),
        publisher: json["publisher"] ?? '',
        publishedDate: json['publishedDate'] ?? '',
        description: json["description"] ?? '',
        language: json["language"] ?? '',
        smallThumbnail: json["smallThumbnail"] ?? '',
        thumbnail: json["thumbnail"] ?? '',
        previewLink: json["previewLink"] ?? '',
        infoLink: json["infoLink"] ?? '',
        canonicalVolumeLink: json["canonicalVolumeLink"] ?? '',
      );
}
