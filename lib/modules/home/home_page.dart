import 'package:auto_size_text/auto_size_text.dart';
import 'package:dalatspecial/modules/share/footer.dart';
import 'package:dalatspecial/modules/share/header.dart';
import 'package:dalatspecial/modules/home/home_page_state.dart';
import 'package:dalatspecial/modules/share/product_item.dart';
import 'package:dalatspecial/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:matt_q/matt_q.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends MattQ<HomePage, HomePageState> {
  @override
  Function(BuildContext context, HomePageState model, Widget child) builder() {
    return (context, model, child) {
      Size size = MediaQuery.of(context).size;
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constranst) {
          model.constraints = constranst;
          return ListView(
            children: [
              Header(),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Image.asset(
                    './upload/images/banner_tet.jpg',
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width *
                        model.demension['containerPaddingHorizontal'],
                    vertical: model.demension['containerPaddingVertical']),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: model.products.length,
                  itemBuilder: (_, index) => ProductItem(model.products[index]),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: model.demension['childAspectRatio'],
                      crossAxisCount: model.demension['crossAxisCount'],
                      mainAxisSpacing:
                          size.width * model.demension['mainAxisSpacing'],
                      crossAxisSpacing:
                          size.width * model.demension['crossAxisSpacing']),
                ),
              ),
              Footer(),
            ],
          );
        })),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: zalo,
                child: Image.asset(
                  './upload/images/zalo.png',
                  scale: 1,
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: tell,
              backgroundColor: AppColor.main,
              child: Icon(
                Icons.phone,
                color: AppColor.yellow,
              ),
            ),
          ],
        ),
      );
    };
  }

  tell() async {
    const url = 'tel:0972828676';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  zalo() async {
    const url = 'https://zalo.me/0972828676';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  HomePageState model() => HomePageState();
}
