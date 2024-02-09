import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/presentations/constant/Color.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback OnPress;
  const ButtonWidget({super.key, required this.text, required this.OnPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: OnPress,
        style: TextButton.styleFrom(
          backgroundColor: ColorConstant.primary,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        ),
        child: Text(
          text,
          style: GoogleFonts.inter(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        ));
  }
}
