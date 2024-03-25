import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:motionhack/app/modules/video_page/models/video_model.dart';

class VideoPageController extends GetxController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  late CollectionReference collectionReference;

  RxList<VideoModel> articles = RxList<VideoModel>([]);

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    collectionReference = firebaseFirestore.collection("videos");
    articles.bindStream(getAllVideos());
  }

  Stream<List<VideoModel>> getAllVideos() =>
      collectionReference.snapshots().map((query) =>
          query.docs.map((item) => VideoModel.fromMap(item)).toList());

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
