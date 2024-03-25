import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/app/shared/widgets/community_card.dart';

import '../controllers/community_controller.dart';

class CommunityView extends GetView<CommunityController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Komunitas',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: CommunityCard(),
            );
          }),
        ),
      ),
      
    );
  }
}
