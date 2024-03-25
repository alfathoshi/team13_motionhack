import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
  });

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
        child: Row(
          children: [
            Container(
              width: 148,
              child: const Text(
                "Image",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Optimalkan Pertumbuhan: Peran Penting Konsumsi Tablet Tambahan Darah",
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
                    "Mencegah buah hati stunting pada Ibu Hamil ",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: GoogleFonts.poppins(
                        textStyle:
                            const TextStyle(fontSize: 13, color: Colors.black)),
                  ),
                  Text(
                    "detik.com",
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
