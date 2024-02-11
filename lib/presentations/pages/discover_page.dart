import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/presentations/constant/Color.dart';
import 'package:nft_market/presentations/widgets/page_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
        child: SingleChildScrollView(
      child: Column(
        children: [
          //User Info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Left
                Row(
                  children: [
                    //Avatar
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: ColorConstant.primary,
                          ),
                          borderRadius: BorderRadius.circular(60 / 2)),
                      padding: EdgeInsets.all(5),
                      child: Image.asset('assets/images/profile.png'),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    //Info Name & Level
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Iqbal Rahmatullah",
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0D1220)),
                        ),
                        Text(
                          "Level 104",
                          style: GoogleFonts.inter(
                              fontSize: 14, color: Color(0xff909FB4)),
                        ),
                      ],
                    )
                  ],
                ),
                //Right
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    "assets/svg/notification.svg",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
