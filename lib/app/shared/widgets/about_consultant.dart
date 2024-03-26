import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AboutConsultant extends StatelessWidget {
  const AboutConsultant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Halo. \nSaya adalah Dr. Pana Mara.',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 10),
          Text(
            'Saya adalah dokter spesialis anak. \nSaya akan memberikan konsultasi mengenai stunting dan masalah lainnya  yang dialami oleh anak Anda. ',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 12,
              color: Colors.black,
            )),
          ),
          SizedBox(height: 50),
          Divider(),
          Text(
            'Konsultasi Terbanyak',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
