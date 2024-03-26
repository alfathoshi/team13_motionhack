import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends StatelessWidget {
  final String rekomendasi;
  final String title;
  final String image;
  final Color color;
  final Color titleColor;
  const HomeCard({
    super.key,
    required this.image,
    required this.rekomendasi,
    required this.title,
    required this.color,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(rekomendasi,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: titleColor,
                        fontSize: 10,
                      )),
                  Text(title,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ))
                ],
              ),
              Image.asset(
                image,
                scale: 4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
