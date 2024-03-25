import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import 'package:motionhack/app/modules/article_page/models/article_model.dart';

class ArticlePageController extends GetxController {
  //TODO: Implement ArticlePageController
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  late CollectionReference collectionReference;

  RxList<ArticleModel> articles = RxList<ArticleModel>([]);

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    collectionReference = firebaseFirestore.collection("article");
    articles.bindStream(getAllArticles());
  }

  Stream<List<ArticleModel>> getAllArticles() =>
      collectionReference.snapshots().map((query) =>
          query.docs.map((item) => ArticleModel.fromMap(item)).toList());

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
