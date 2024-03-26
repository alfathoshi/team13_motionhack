import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityCard extends StatelessWidget {
  final String username;
  final String message;
  final String menit;
  final String jam;
  CommunityCard(
      {super.key,
      required this.message,
      required this.username,
      required this.jam,
      required this.menit});
  final isLiked = false.obs;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
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
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.transparent,
                  child: Icon(
                    Icons.account_circle,
                    size: 48,
                    color: Colors.lightBlue,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    Text("$jam:$menit"),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              message,
              style: GoogleFonts.poppins(),
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Obx(() => CircleAvatar(
                            backgroundColor: isLiked.value == true
                                ? Colors.blue
                                : Colors.grey.shade200,
                            child: (IconButton(
                              onPressed: () {
                                isLiked.value = !isLiked.value;
                              },
                              icon: Icon(
                                Icons.thumb_up,
                                color: isLiked.value == true
                                    ? Colors.lightBlue.shade200
                                    : Colors.grey,
                                size: 20,
                              ),
                            )),
                          )),
                      const SizedBox(
                        width: 12,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mode_comment,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    Text(
                      '0',
                      style: GoogleFonts.poppins(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
