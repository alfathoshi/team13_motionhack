import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motionhack/app/shared/widgets/about_consultant.dart';
import 'package:motionhack/app/shared/widgets/consultant_review.dart';
import 'package:motionhack/app/shared/widgets/consultant_schedule.dart';

import '../controllers/consultant_controller.dart';

class ConsultantView extends GetView<ConsultantController> {
  const ConsultantView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200.0),
            child: AppBar(
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 20),
                child: Container(
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 34),
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          child: Image.asset("assets/images/dokter.png"),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Dr. Pana Mara, Sp. A',
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black)),
                                ),
                              ),
                              Text(
                                'Spesialis Anak',
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 13, color: Colors.black)),
                              ),
                              const SizedBox(height: 7),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_outlined,
                                    size: 14,
                                  ),
                                  Text(
                                    ' 5/5 • ',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 11, color: Colors.black)),
                                  ),
                                  Text(
                                    '100 ulasan',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 11, color: Colors.black)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      'Tentang',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Jadwal',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Ulasan(100)',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
                indicatorColor: Colors.black,
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              AboutConsultant(),
              ConsultantSchedule(),
              ConsultantReview(),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 60),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff60abee),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Reservasi',
                style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
            ),
          )),
    );
  }
}
