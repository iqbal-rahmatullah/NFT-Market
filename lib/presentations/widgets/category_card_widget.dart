import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCategoryCard {
  String imageUrl;
  String title;
  String avaible;

  InfoCategoryCard(
      {required this.imageUrl, required this.title, required this.avaible});
}

class CategoryWidget extends StatelessWidget {
  final InfoCategoryCard infoCard;
  const CategoryWidget({super.key, required this.infoCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Expanded(
              child: Image.network(
            infoCard.imageUrl,
            width: double.infinity,
            fit: BoxFit.cover,
          )),
          Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              width: double.infinity,
              child: Column(
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
                    height: 8,
                  ),
                  Text(
                    infoCard.avaible,
                    style: GoogleFonts.inter(color: Color(0xff909FB4)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
