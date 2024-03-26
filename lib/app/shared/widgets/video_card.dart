import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({
    super.key,
    required this.id,
    required this.title,
    required this.source,
    required this.image
  });

  final String id;
  final String title;
  final String source;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 6,
                    offset: Offset(0, 4)),
                BoxShadow(
                    color: Colors.white, blurRadius: 6, offset: Offset(0, -4))
              ],
              color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(image)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Container(
                  child: Text(
                    title,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
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
                    source,
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
