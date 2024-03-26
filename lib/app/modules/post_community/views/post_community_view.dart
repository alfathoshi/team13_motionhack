import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/app/controllers/auth_controller.dart';
import 'package:motionhack/app/shared/widgets/post_comment_card.dart';

import '../controllers/post_community_controller.dart';

class PostCommunityView extends GetView<PostCommunityController> {
  final authC = Get.find<AuthController>();
  final user = FirebaseAuth.instance.currentUser!;
  final userDb = FirebaseFirestore.instance.collection('users').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tanya',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
        future: controller.getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else if (snapshot.hasData) {
            Map<String, dynamic>? user = snapshot.data!.data();
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: PostCommentCard(
                username: user!['username'],
                textC: controller.askC,
              ),
            );
          } else {
            return Text('No Data');
          }
        },
      ),
      floatingActionButton: FutureBuilder(
        future: controller.getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else if (snapshot.hasData) {
            Map<String, dynamic>? user = snapshot.data!.data();
            Timestamp now = Timestamp.now();
            DateTime dateNow = now.toDate();
            return FloatingActionButton(
              onPressed: () {
                controller.postMessage(user!['username'], dateNow.minute.toString(), dateNow.hour.toString());
              },
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFF60ABEE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.send),
            );
          } else {
            return Text('No Data');
          }
        },
      ),
    );
  }
}
