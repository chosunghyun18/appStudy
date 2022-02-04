import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_try/color.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "could not lunch";
  }
}

class NoPoverty extends StatelessWidget {
  final List<String> imageList = [
    "https://www.childfund.or.kr/resources/images/support/img_regular_content-13.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsZrtzlcoN_cbaZnq3ufcoPz6eMqeW2RYUm9GFzVkQFyrm-zmA7CPDkOS58NPWPTOjFUQ&usqp=CAU",
  ];
  // onTap: () {
  // const url = 'https://google.com';
  // launchURL(url);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: ListTile(
              trailing: Image.asset("assets/chario_logo.png",
                  width: 100, height: 50)),

          // centerTitle: true,
          backgroundColor: mainColor,
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: SizedBox(
                height: 10,
                width: 200,
                child: Container(color: Colors.white),
              ),
            ),
            // logo
            Expanded(
              child: Container(
                child: InkWell(
                  onTap: () {
                    const url = 'https://www.unicef.or.kr/?trackcode=g_kad&utm_source=google&utm_medium=cpc&utm_term=UNICEF&utm_campaign=brand&mac_ad_key=2011228522&gclid=Cj0KCQiAuvOPBhDXARIsAKzLQ8G9OANldq-fBrxBXWy0g1ysfaQ3HYxc3veGLoYDUXbSNl-XGJdhic8aAuVLEALw_wcB';
                    _launchURL(url);
                  },
                  child: Ink.image(
                    image: AssetImage('assets/rufi.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // box and text
            Center(
              child: SizedBox(
                height: 10,
                width: 200,
                child: Container(color: Colors.white),
              ),
            ),

            Container(
              width: 240.0,
              height: 42.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: mainColor,
              ),
              child: Center(
                child: Text(
                  'Save the children',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 18,
                    color: Colors.white,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 10,
                width: 200,
                child: Container(color: Colors.white),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: false,
                enableInfiniteScroll: false,
                autoPlay: true,
              ),
              items: imageList
                  .map((e) => ClipRRect
                (
                        borderRadius: BorderRadius.circular(8),
                        child: Stack
                          (
                          fit: StackFit.expand,
                          children: <Widget>
                          [
                            Image.network(e, width: 1050, height: 350, fit: BoxFit.cover,)
                          ],
                        ),
                      ))
                  .toList(),
            ),

            Center(
              child: SizedBox(
                height: 10,
                width: 200,
                child: Container(color: Colors.white),
              ),
            ),

            Container(
              child: RaisedButton(
                onPressed: () {
                  const url = 'https://www.unicef.or.kr/?trackcode=g_kad&utm_source=google&utm_medium=cpc&utm_term=UNICEF&utm_campaign=brand&mac_ad_key=2011228522&gclid=Cj0KCQiAuvOPBhDXARIsAKzLQ8G9OANldq-fBrxBXWy0g1ysfaQ3HYxc3veGLoYDUXbSNl-XGJdhic8aAuVLEALw_wcB';
                  _launchURL(url);
                },
                child: const Text('donation', style: TextStyle(fontSize: 20)),
                color: mainColor,
                textColor: Colors.white,
                elevation: 5,
              ),
            ),

            // BottomButton(
            //   buttonTitle: 'CALCULATE',
            //   onTap: () {},),
          ],
        ));
  }
}
