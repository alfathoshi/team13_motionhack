import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/app/routes/app_pages.dart';
import 'package:motionhack/app/utils/article_card.dart';

import '../controllers/article_page_controller.dart';

class ArticlePageView extends GetView<ArticlePageController> {
  const ArticlePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8f8f8),
      
      body: SingleChildScrollView(
          child: Column(
        children: [
          ArticleCard(),
          ArticleCard(),
        ],
      )),
    );
  }
}
