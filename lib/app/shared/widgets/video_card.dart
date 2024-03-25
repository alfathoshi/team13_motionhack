import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({
    super.key,
    required this.id,
    required this.title,
    required this.source,
  });

  final String id;
  final String title;
  final String source;

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
                    color: Colors.grey, blurRadius: 6, offset: Offset(6, 8))
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
