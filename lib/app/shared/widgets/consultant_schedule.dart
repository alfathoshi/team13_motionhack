import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ConsultantSchedule extends StatelessWidget {
  const ConsultantSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jadwal Konsultasi',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 5),
          Text(
            'Hari ini tersedia.',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            )),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffe5f2ff)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DateAndHours(day: 'Hari ini', hour: '09:00 - 19:00'),
                SizedBox(width: 20),
                DateAndHours(day: 'Sesi Istirahat', hour: '13:00 - 14:00'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfff5f5f5)),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DateAndHours(day: 'Senin', hour: '09:00 - 19:00'),
                    SizedBox(width: 20),
                    DateAndHours(day: 'Selasa', hour: '09:00 - 19:00'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DateAndHours(day: 'Rabu', hour: '09:00 - 19:00'),
                    SizedBox(width: 20),
                    DateAndHours(day: 'Kamis', hour: '09:00 - 19:00'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DateAndHours(day: 'Jumat', hour: '09:00 - 19:00'),
                    SizedBox(width: 20),
                    DateAndHours(day: 'Sabtu', hour: '09:00 - 19:00'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DateAndHours(day: 'Minggu', hour: 'Libur'),
                    SizedBox(width: 20),
                    DateAndHours(day: 'Libur \nNasional', hour: '13:00 - 14:00'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DateAndHours(
                        day: 'Sesi \nIstirahat', hour: 'Tidak Ada'),
                    SizedBox(width: 20),
                    DateAndHours(day: 'Sesi Istirahat', hour: '13:00 - 14:00'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DateAndHours extends StatelessWidget {
  const DateAndHours({
    super.key,
    required this.day,
    required this.hour,
  });

  final String day;
  final String hour;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          day,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 3),
        Text(
          hour,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 11,
            color: Colors.black,
          )),
        ),
      ],
    );
  }
}
