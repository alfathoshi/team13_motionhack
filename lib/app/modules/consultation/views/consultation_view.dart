import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/consultation_controller.dart';

import 'package:motionhack/app/modules/consultant/views/consultant_view.dart';

class ConsultationView extends GetView<ConsultationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Konsultasi',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Container(
            height: 150,
            child: GestureDetector(
              onTap: () {
                Get.to(ConsultantView());
              },
              child: Card(
                child: Row(
                  children: [
                    Container(
                      width: 148,
                      child: Text(
                        "Image",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Dr. Pana Mara, Sp. A',
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black)),
                            ),
                          ),
                          Text(
                            'Spesialis Anak',
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 13, color: Colors.black)),
                          ),
                          SizedBox(height: 7),
                          Row(
                            children: [
                              Icon(
                                Icons.star_outlined,
                                size: 14,
                              ),
                              Text(
                                ' 5/5 • ',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 11, color: Colors.black)),
                              ),
                              Text(
                                '100 ulasan',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 11, color: Colors.black)),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
