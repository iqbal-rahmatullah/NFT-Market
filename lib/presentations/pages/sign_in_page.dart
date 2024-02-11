import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/presentations/pages/sign_up_page.dart';
import 'package:nft_market/presentations/widgets/button_widget.dart';
import 'package:nft_market/presentations/widgets/page_widget.dart';
import 'package:nft_market/presentations/widgets/textfield_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 30),
                          child: Text(
                            "Start Collecting Amazing Artworks",
                            style: GoogleFonts.inter(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff0D1220)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 16),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 30),
                              child: Column(
                                children: [
                                  TextFieldwidget(
                                    label: "Email",
                                  ),
                                  TextFieldwidget(
                                    label: "Password",
                                    isPassword: true,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: ButtonWidget(
                                      text: "Continue",
                                      OnPress: () {},
                                      isFull: true,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (builder) => SignUpPage()));
                    },
                    child: Text(
                      "Create A New Account",
                      style: GoogleFonts.inter(
                          fontSize: 16, color: Color(0xff909FB4)),
                    ))
              ]),
        ),
      ),
    );
  }
}
