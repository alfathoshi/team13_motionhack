import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostCommentCard extends StatelessWidget {
  const PostCommentCard({
    super.key,
    required this.username,
    required this.textC,
  });
  final String username;
  final TextEditingController textC;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(),
              const SizedBox(
                width: 10,
              ),
              Text(
                username,
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
              )
            ],
          ),
          TextField(
            onChanged: (value) {},
            controller: textC,
            decoration: const InputDecoration(
              
              hintText: 'Tulis yang anda ingin tanyakan...',
              hintStyle: TextStyle(color: Color(0xFFc4c4c4)),
              suffixIconColor: Color(0xFFc4c4c4),
              focusedBorder: InputBorder.none,
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent)),
            ),
          ),
        ],
      ),
    );
  }
}
