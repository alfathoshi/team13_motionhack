import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityCard extends StatelessWidget {
  final String username;
  final String message;
  CommunityCard({
    super.key,
    required this.message,
    required this.username,
  });
  final isLiked = false.obs;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
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
                CircleAvatar(),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(message),
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
                      '12',
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
