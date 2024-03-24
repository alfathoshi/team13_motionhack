import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:motionhack/app/modules/article_page/views/article_page_view.dart';
import 'package:motionhack/app/utils/video_card.dart';

import '../controllers/video_page_controller.dart';

class VideoPageView extends GetView<VideoPageController> {
  const VideoPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf8f8f8),
        appBar: AppBar(
            toolbarHeight: 100,
            automaticallyImplyLeading: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Edukasi',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                ),
                SizedBox(height: 15),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Get.to(ArticlePageView());
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'Artikel',
                                style: TextStyle(color: Color(0xff88c0f2)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0xff88c0f2), width: 3)),
                          ),
                          child: Center(
                            child: Text(
                              'Video',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff88c0f2)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              VideoCard(),
            ],
          ),
        ));
  }
}
