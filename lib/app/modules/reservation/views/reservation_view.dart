import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/reservation_controller.dart';

class ReservationView extends GetView<ReservationController> {
  ReservationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reservasi',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(13),
              title: Text(
                'Mikhayla',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Ubah Data',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                ),
              ),
            ),
            SizedBox(height: 15),
            ExpansionTile(
              childrenPadding: EdgeInsets.all(10),
              title: Text(
                'Jenis Layanan',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  'Pilih jenis layanan untuk konsultasi',
                  style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(color: Colors.black, fontSize: 11)),
                ),
                SizedBox(height: 15),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.video_call_rounded,
                        color: Color(0xff26b860),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Layanan Video',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black, fontSize: 11)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.video_call_rounded,
                        color: Color(0xff26b860),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Layanan Suara',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black, fontSize: 11)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.video_call_rounded,
                        color: Color(0xff26b860),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Layanan Pesan',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.black, fontSize: 11)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Durasi layanan video	: 1 jam \nDurasi layanan suara	: 1 jam \nDurasi layanan pesan	: 24 jam',
                  style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(color: Colors.black, fontSize: 11)),
                ),
              ],
            ),
            SizedBox(height: 15),
            ExpansionTile(
              childrenPadding: EdgeInsets.all(10),
              title: Text(
                'Tanggal Konsultasi',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: TableCalendar(
                    headerStyle: HeaderStyle(
                        formatButtonVisible: false, titleCentered: true),
                    focusedDay: DateTime.now(),
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            ExpansionTile(
              childrenPadding: EdgeInsets.all(10),
              title: Text(
                'Tanggal Konsultasi',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
              ),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    HourButton(
                      text: "09:00",
                    ),
                    HourButton(
                      text: "10:00",
                    ),
                    HourButton(
                      text: "11:00",
                    ),
                    HourButton(
                      text: "12:00",
                    ),
                    HourButton(
                      text: "13:00",
                    ),
                    HourButton(
                      text: "14:00",
                    ),
                    HourButton(
                      text: "15:00",
                    ),
                    HourButton(
                      text: "16:00",
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HourButton extends StatelessWidget {
  const HourButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
