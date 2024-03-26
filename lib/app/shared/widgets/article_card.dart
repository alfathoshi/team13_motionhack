import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.sourceTitle,
    required this.image,
  });

  final String id;
  final String title;
  final String description;
  final String sourceTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Container(
        height: 149,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 6,
                  offset: const Offset(0, 4)),
              const BoxShadow(
                  color: Colors.white, blurRadius: 6, offset: Offset(0, -4))
            ],
            color: Colors.white),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                child: Image.asset(image)),
            const SizedBox(width: 10),
            Container(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      title,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black)),
                    ),
                  ),
                  Text(
                    description,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: GoogleFonts.poppins(
                        textStyle:
                            const TextStyle(fontSize: 13, color: Colors.black)),
                  ),
                  Text(
                    sourceTitle,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10, color: Color(0xff88c0f2))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
