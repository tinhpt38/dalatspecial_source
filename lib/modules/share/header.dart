import 'package:auto_size_text/auto_size_text.dart';
import 'package:dalatspecial/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (_, constranst) {
        if (constranst.maxWidth >= 1000) {
          return Container(
            color: AppColor.mainAccent,
            width: double.infinity,
            height: size.height * 1 / 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 64),
                  child: Image.asset(
                    './upload/images/dalatspecial_icon.png',
                    scale: 3,
                  ),
                ),
                AutoSizeText('SẢN PHẨM TỪ ĐÔNG TRÙNG HẠ THẢO',
                    maxLines: 1,
                    minFontSize: 16,
                    style: GoogleFonts.oswald(
                        color: AppColor.yellow, fontSize: 32)),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 64,
                    top: 32,
                  ),
                  child: SelectableText('0972 828 676',
                      maxLines: 1,
                      style: GoogleFonts.oswald(
                          color: AppColor.yellow, fontSize: 16)),
                ),
              ],
            ),
          );
        } else if (constranst.maxWidth >= 800) {
          return Container(
            color: AppColor.mainAccent,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Image.asset(
                    './upload/images/dalatspecial.png',
                    scale: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: SelectableText('0972 828 676',
                      style: GoogleFonts.oswald(
                          color: AppColor.yellow, fontSize: 18)),
                ),
              ],
            ),
          );
        }
        return Container(
          color: AppColor.mainAccent,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Image.asset(
                  './upload/images/dalatspecial.png',
                  scale: 3,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
