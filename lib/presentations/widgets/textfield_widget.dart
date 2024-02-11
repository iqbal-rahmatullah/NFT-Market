import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/presentations/constant/Color.dart';

class TextFieldwidget extends StatelessWidget {
  final String label;
  final bool isPassword;
  const TextFieldwidget(
      {super.key, required this.label, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(fontSize: 16, color: Color(0xff0D1220)),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          obscureText: (isPassword),
          style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            fillColor: Color(0xffF7F9FC),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: ColorConstant.primary),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
