import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/app/data/firestore.dart';
import 'package:motionhack/app/shared/widgets/community_card.dart';

import '../controllers/community_controller.dart';

class CommunityView extends GetView<CommunityController> {
  final db = FirestoreDatabase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Komunitas',
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
        ),
        body: StreamBuilder(
          stream: db.getPostStream(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final posts = snapshot.data!.docs;
            if (snapshot.data == null || posts.isEmpty) {
              return const Center(
                child: Text('No Data'),
              );
            }
            return Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final post = posts[index];
                  String message = post['PostMessage'];
                  String username = post['UserName'];
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CommunityCard(
                      username: username,
                      message: message,
                    ),
                  );
                },
              ),
            );
          },
        ));
  }
}
