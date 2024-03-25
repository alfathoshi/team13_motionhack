import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Container(
          height: 263,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(0, 4),
                    blurRadius: 7,
                    spreadRadius: 1),
                const BoxShadow(
                    color: Colors.white,
                    offset: Offset(0, -4),
                    blurRadius: 7,
                    spreadRadius: 1)
              ],
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 177,
                color: Colors.grey,
                child: Center(
                    child: Text(
                  'Video',
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Container(
                  child: Text(
                    "Optimalkan Pertumbuhan: Peran Penting Konsumsi Tablet Tambahan Darah",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  child: Text(
                    "YouTube",
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 11, color: Color(0xff88c0f2))),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
