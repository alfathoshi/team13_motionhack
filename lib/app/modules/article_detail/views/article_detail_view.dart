import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/article_detail_controller.dart';

class ArticleDetailView extends GetView<ArticleDetailController> {
  const ArticleDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFf8f8f8),
        appBar: AppBar(
          title: Text(
            'Edukasi',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      color: Colors.amber,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'detik.com',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 11, color: Color(0xff88c0f2))),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Optimalkan Pertumbuhan: Peran Penting Konsumsi Tablet Tambahan Darah',
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black)),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque non risus auctor nunc rutrum porta imperdiet a elit. Morbi nec faucibus elit, sed suscipit eros. Praesent tincidunt blandit nibh id interdum. Etiam fringilla urna ac orci egestas malesuada ac a ligula. Sed pulvinar pretium dignissim. Nunc id odio at arcu rhoncus vulputate. Maecenas eleifend tellus ut sem ultrices, malesuada molestie est venenatis. Praesent vestibulum sit amet turpis sed iaculis. Vestibulum quis ultricies dolor. Etiam tincidunt nisi non dictum congue.\n\nQuisque pretium, ligula sagittis tempor eleifend, libero leo ultrices erat, non gravida ipsum tortor eget orci. Pellentesque facilisis est est, eget finibus sem consectetur in. Fusce ligula ligula, porta sit amet varius accumsan, ullamcorper ullamcorper metus. Pellentesque placerat ante quam, id lacinia turpis fringilla a. Vivamus fermentum in eros quis gravida. In pulvinar nisi ac luctus rhoncus. Integer aliquet nec tellus tincidunt sagittis. Morbi euismod neque a vulputate cursus. Phasellus sed laoreet mi. Cras ultrices dictum velit, commodo lacinia nunc aliquam nec. Pellentesque luctus auctor sollicitudin. \n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi et nibh mattis, placerat nisi ac, volutpat turpis. Pellentesque rhoncus ornare neque sit amet porttitor. Etiam commodo turpis libero, a dignissim erat bibendum eu. Vivamus quis ante ultrices, blandit lectus non, varius tellus. Proin rutrum, nulla sit amet blandit iaculis, lacus ante commodo risus, quis egestas felis orci quis nisl. Phasellus pharetra lorem ut mauris vulputate, mattis dignissim sem efficitur. Nunc bibendum vulputate ullamcorper. Etiam faucibus finibus lobortis. Pellentesque facilisis id est eget maximus. Quisque eget tortor lacinia metus vulputate faucibus sit amet efficitur eros. Morbi gravida eget urna sed consectetur.',
                      softWrap: true,
                      style: GoogleFonts.poppins(
                          textStyle:
                              const TextStyle(fontSize: 14, color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
