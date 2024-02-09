import 'dart:ui';

import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final Widget child;
  const PageWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(top: -49, right: -50, child: BlobBlur(color: 0xff1B4DEA)),
          Positioned(
              bottom: -72, left: -66, child: BlobBlur(color: 0xffF86780)),
          SafeArea(child: child)
        ],
      ),
    );
  }

  Container BlobBlur({required int color}) {
    return Container(
      width: 161,
      height: 161,
      decoration: BoxDecoration(
          color: Color(color).withOpacity(.3),
          borderRadius: BorderRadius.circular(161 / 2)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 120, sigmaY: 120),
        child: Container(),
      ),
    );
  }
}
