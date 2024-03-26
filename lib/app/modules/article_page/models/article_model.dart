import 'package:cloud_firestore/cloud_firestore.dart';

class ArticleModel {
  String? id;
  String? title;
  String? description;
  String? body;
  String? source;
  String? sourceTitle;
  String? image;

  ArticleModel({
    this.id,
    this.title,
    this.description,
    this.body,
    this.source,
    this.sourceTitle,
  });

  ArticleModel.fromMap(DocumentSnapshot data) {
    id = data.id;
    title = data["title"];
    description = data["description"];
    body = data["body"];
    source = data["source"];
    sourceTitle = data["sourceTitle"];
    image = data["image"];
  }
}
