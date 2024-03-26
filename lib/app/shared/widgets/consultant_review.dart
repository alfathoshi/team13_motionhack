import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ConsultantReview extends StatelessWidget {
  const ConsultantReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Ulasan',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10),
              Text(
                '100',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0xff1576cc),
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Sebanyak 100% merekomendasikan dokter ini',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              fontSize: 12,
              color: Colors.black,
            )),
          ),
          SizedBox(height: 15),
          Container(
            height: 121,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xfff5f5f5)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        '5.0',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 27,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xff1576cc),
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff1576cc),
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff1576cc),
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff1576cc),
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff1576cc),
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                  VerticalDivider(
                    width: 3,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Sangat Puas',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(width: 9),
                          Container(
                            width: 60,
                            height: 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xff1576cc)),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '100',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 8,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Puas',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xffe3e6ed),
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(width: 9),
                          Container(
                            width: 60,
                            height: 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffe3e6ed)),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '100',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xffe3e6ed),
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Biasa saja',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xffe3e6ed),
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(width: 9),
                          Container(
                            width: 60,
                            height: 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffe3e6ed)),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '100',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xffe3e6ed),
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Tidak Puas',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xffe3e6ed),
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(width: 9),
                          Container(
                            width: 60,
                            height: 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffe3e6ed)),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '100',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xffe3e6ed),
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Sangat Tidak Puas',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xffe3e6ed),
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(width: 9),
                          Container(
                            width: 40,
                            height: 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffe3e6ed)),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '100',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 8,
                                    color: Color(0xffe3e6ed),
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
