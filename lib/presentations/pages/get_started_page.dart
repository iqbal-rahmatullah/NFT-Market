import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/presentations/pages/sign_up_page.dart';
import 'package:nft_market/presentations/widgets/button_widget.dart';
import 'package:nft_market/presentations/widgets/page_widget.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/images/Illustration.png'),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Text(
              "Collect NFTs As\nYour Own Collection",
              style: GoogleFonts.inter(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                height: 36 / 26,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "NFT is gonna help us to keep what\nis belong to us, like forever",
              style: GoogleFonts.inter(
                  fontSize: 16, height: 26 / 16, color: Color(0xff909FB4)),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: ButtonWidget(
              text: "Getting Started",
              OnPress: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (builder) => SignUpPage()));
              },
            ),
          )
        ]),
      ),
    );
  }
}
