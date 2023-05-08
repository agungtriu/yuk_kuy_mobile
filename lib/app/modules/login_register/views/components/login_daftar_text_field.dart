import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginDaftarTextField extends StatelessWidget {
  const LoginDaftarTextField({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
              textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          )),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(hintText: title),
        ),
      ],
    );
  }
}
