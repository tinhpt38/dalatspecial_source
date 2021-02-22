import 'package:auto_size_text/auto_size_text.dart';
import 'package:dalatspecial/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constranst) {
      if (constranst.maxWidth >= 1200) {
        return Container(
          width: double.infinity,
          alignment: Alignment.center,
          color: AppColor.mainAccent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 64),
                  child: Image.asset(
                    './upload/images/dalatspecial.png',
                    scale: 2,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 8),
                    child: SelectableText('0972 828 676 - 0983 864 642',
                        maxLines: 1,
                        style: GoogleFonts.oswald(
                            color: Colors.white, fontSize: 14)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: AutoSizeText('Copyright @ 2021 Da Lat Special',
                        maxLines: 1,
                        minFontSize: 12,
                        style: GoogleFonts.oswald(
                            color: AppColor.yellow,
                            fontSize: 12,
                            fontStyle: FontStyle.italic)),
                  ),
                ],
              ),
            ],
          ),
        );
      } else if (constranst.maxWidth >= 800) {
        return Container(
          width: double.infinity,
          alignment: Alignment.center,
          color: AppColor.mainAccent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 32),
                  child: Image.asset(
                    './upload/images/dalatspecial.png',
                    scale: 3,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 8),
                    child: SelectableText('0972 828 676 - 0983 864 642',
                        maxLines: 1,
                        style: GoogleFonts.oswald(
                            color: Colors.white, fontSize: 14)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: AutoSizeText('Copyright @ 2021 Da Lat Special',
                        maxLines: 1,
                        minFontSize: 10,
                        style: GoogleFonts.oswald(
                            color: AppColor.yellow,
                            fontSize: 12,
                            fontStyle: FontStyle.italic)),
                  ),
                ],
              ),
            ],
          ),
        );
      } else {
        return Container(
          width: double.infinity,
          alignment: Alignment.center,
          color: AppColor.mainAccent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 12),
                  child: Image.asset(
                    './upload/images/dalatspecial.png',
                    scale: 4,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 8),
                    child: SelectableText('0972 828 676 - 0983 864 642',
                        maxLines: 1,
                        style: GoogleFonts.oswald(
                            color: Colors.white, fontSize: 14)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: AutoSizeText('Copyright @ 2021 Da Lat Special',
                        maxLines: 1,
                        minFontSize: 12,
                        style: GoogleFonts.oswald(
                            color: AppColor.yellow,
                            fontSize: 12,
                            fontStyle: FontStyle.italic)),
                  ),
                ],
              ),
            ],
          ),
        );
      }
    });
  }
}
