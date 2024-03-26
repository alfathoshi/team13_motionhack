import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.sourceTitle,
  });

  final String id;
  final String title;
  final String description;
  final String sourceTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Container(
        height: 149,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200, blurRadius: 6, offset: Offset(0, 4)),
              BoxShadow(color: Colors.white, blurRadius: 6, offset: Offset(0, -4))
            ],
            color: Colors.white),
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
                          textStyle: TextStyle(
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
                            TextStyle(fontSize: 13, color: Colors.black)),
                  ),
                  Text(
                    sourceTitle,
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 10, color: Color(0xff88c0f2))),
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
