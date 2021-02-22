import 'package:auto_size_text/auto_size_text.dart';
import 'package:dalatspecial/models/product.dart';
import 'package:dalatspecial/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(4),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                product.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: AutoSizeText(
              product.title.toUpperCase(),
              minFontSize: 14,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: GoogleFonts.oswald(color: AppColor.main, fontSize: 16),
            ),
          ),
          Visibility(
            visible: product.unit.isNotEmpty || product.unit == '',
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: AutoSizeText(
                product.unit,
                minFontSize: 12,
                textScaleFactor: 1,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: GoogleFonts.oswald(color: AppColor.black, fontSize: 12),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 8, bottom: 8, top: 8),
            child: AutoSizeText(
              product.price,
              maxLines: 1,
              minFontSize: 12,
              textAlign: TextAlign.center,
              style: GoogleFonts.oswald(fontSize: 16, color: AppColor.main),
            ),
          ),
        ],
      ),
    );
  }
}
