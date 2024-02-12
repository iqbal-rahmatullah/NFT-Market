import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/presentations/constant/Color.dart';
import 'package:nft_market/presentations/widgets/bid_card_widget.dart';
import 'package:nft_market/presentations/widgets/category_card_widget.dart';
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
          _userInfo(),
          _popularBids(),
          _browse()
        ],
      ),
    ));
  }

  Widget _popularBids() {
    var allCard = [
      BidCardInfo(
          imageUrl:
              "https://images.unsplash.com/photo-1643101681441-0c38d714fa14?q=80&w=3432&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          title: "Blockchain Extended",
          end: "35m 11s",
          price: "20.1"),
      BidCardInfo(
          imageUrl:
              "https://images.unsplash.com/photo-1645731504636-72725e46b26b?q=80&w=3280&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          title: "Lolipop Crypto",
          end: "38m 11s",
          price: "20.1"),
      BidCardInfo(
          imageUrl:
              "https://images.unsplash.com/photo-1645731505977-91e1fa9a3254?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          title: "Dogecoin",
          end: "38m 11s",
          price: "20.1"),
    ];

    return Padding(
        padding: EdgeInsets.only(left: 24, top: 36),
        child: _carouselContainer(
            height: 268,
            title: "Popular Bids",
            itemBuilder: ((context, index) => BidCardWidget(
                  infoCard: allCard[index],
                )),
            itemCount: allCard.length));
  }

  Widget _browse() {
    var allCardCategory = [
      InfoCategoryCard(
          imageUrl:
              "https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?q=80&w=3328&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          title: "Vektor",
          avaible: "12,049 items"),
      InfoCategoryCard(
          imageUrl:
              "https://images.unsplash.com/photo-1635241161466-541f065683ba?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          title: "3D",
          avaible: "15,239 items"),
      InfoCategoryCard(
          imageUrl:
              "https://images.unsplash.com/photo-1637858868799-7f26a0640eb6?q=80&w=3280&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
          title: "Cartoon",
          avaible: "15,049 items")
    ];

    return Padding(
        padding: EdgeInsets.only(left: 24, top: 36),
        child: _carouselContainer(
            height: 196,
            title: "Browse",
            itemBuilder: (context, index) => CategoryWidget(
                  infoCard: allCardCategory[index],
                ),
            itemCount: allCardCategory.length));
  }

  Column _carouselContainer(
      {required double height,
      required String title,
      required NullableIndexedWidgetBuilder itemBuilder,
      int itemCount = 5}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
              color: Color(0xff0D1220),
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          height: height,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: itemBuilder,
              separatorBuilder: (context, index) => SizedBox(
                    width: 24,
                  ),
              itemCount: itemCount),
        )
      ],
    );
  }

  Widget _userInfo() {
    return Padding(
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
    );
  }
}
