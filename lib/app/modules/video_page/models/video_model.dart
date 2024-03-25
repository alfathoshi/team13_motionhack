import 'package:cloud_firestore/cloud_firestore.dart';

class VideoModel {
  String? id;
  String? title;
  String? source;

  VideoModel({
    this.id,
    this.title,
    this.source,
  });

  VideoModel.fromMap(DocumentSnapshot data) {
    id = data.id;
    title = data["title"];
    source = data["source"];
  }
}
