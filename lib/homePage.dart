import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:paytm/chooseLocationPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myPaytm = [
    {
      "name": "Balance",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/ic_passbook_header.png?raw=true",
    },
    {
      "name": "Bank",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/bank.png?raw=true",
    },
    {
      "name": "Wallet",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/calendar_blue.png?raw=true",
    },
    {
      "name": "Movie",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/video.png?raw=true"
    },
  ];

  final featured = [
    {
      "name": "monthly bills",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/ic_passbook_header.png?raw=true",
    },
    {
      "name": "Online Shopping",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/shopping-bag.png?raw=true",
    },
    {
      "name": "Travel Bookings",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/airplane.png?raw=true",
    },
    {
      "name": "Manage Fastag",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/gold.png?raw=true",
    },
    {
      "name": "Postpaid",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/send_money.png?raw=true",
    },
    {
      "name": "Insurance quotes",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/book.png?raw=true",
    },
    {
      "name": "Trade Stocks",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/delivery.png?raw=true",
    },
    {
      "name": "Nearby Stores",
      "url":
          "https://github.com/flutter-devs/flutter_paytm_clone/blob/master/assets/paytm/iocl_tip.png?raw=true"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: Image.asset("images/logo.png"),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.blue[900],
              ),
              onPressed: () {}),
          IconButton(
            icon: Icon(Icons.messenger_outline, color: Colors.blue),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Image.network(
                "https://raw.githubusercontent.com/flutter-devs/flutter_paytm_clone/master/assets/paytm/mobilebanner.png",
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "My Paytm",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              height: 100,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: myPaytm.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  crossAxisCount: 4,
                ),
                itemBuilder: (ctx, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: InkResponse(
                          child: Image.network(
                            myPaytm[i]['url'],
                            height: 40,
                          ),
                          onTap: () {
                            if (i == 3) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChooseLocationPage(),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          myPaytm[i]['name'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Image.network(
                    "https://paytm.com/offers/img/addmoneyupiWeb.jpg",
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
            ),
            Container(
              height: 300,
              color: Colors.lightBlue[50],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      "Featured",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: featured.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1,
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (ctx, i) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Image.network(
                                featured[i]['url'],
                                height: 40,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                featured[i]['name'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Center(
                    child: RaisedButton(
                      color: Colors.white12,
                      elevation: 0,
                      onPressed: () {},
                      child: Text("see all "),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black45),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
