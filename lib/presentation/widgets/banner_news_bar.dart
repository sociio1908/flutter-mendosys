import 'package:flutter/material.dart';

class BannerNewsBar extends StatelessWidget {
  final String titleBanner, subtitleBanner;

  const BannerNewsBar({
    super.key,
    required this.titleBanner,
    required this.subtitleBanner,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .9,
      height: size.height * .12,
      margin: EdgeInsets.symmetric(vertical: size.height * .02),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [const Color(0xFFFF946A), const Color(0xFFC2C2C2)],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/calculator.png',
            height: size.height * .09,
            fit: BoxFit.fitHeight,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                titleBanner,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitleBanner,
                maxLines: 2,
                style: TextStyle(fontSize: 14),
                softWrap: true,
              ),
            ],
          ),
          const SizedBox(width: 10),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
