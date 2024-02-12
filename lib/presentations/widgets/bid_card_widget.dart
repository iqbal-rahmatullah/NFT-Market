import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BidCardInfo {
  String imageUrl;
  String title;
  String end;
  String price;

  BidCardInfo(
      {required this.imageUrl,
      required this.title,
      required this.end,
      required this.price});
}

class BidCardWidget extends StatelessWidget {
  final BidCardInfo infoCard;
  const BidCardWidget({super.key, required this.infoCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(children: [
        Expanded(
          child: Image.network(
            infoCard.imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  infoCard.title,
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0D1220)),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Text(
                      "Ends in ",
                      style: GoogleFonts.inter(color: Color(0xff909FB4)),
                    ),
                    Text(
                      infoCard.end,
                      style: GoogleFonts.inter(
                          color: Color(0xffF86780),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                SvgPicture.asset('assets/svg/eth.svg'),
                SizedBox(
                  width: 4,
                ),
                Text(
                  infoCard.price,
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0D1220)),
                )
              ],
            )
          ]),
        )
      ]),
    );
  }
}
