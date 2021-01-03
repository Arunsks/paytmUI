import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MovieBookingPage extends StatefulWidget {
  @override
  _MovieBookingPageState createState() => _MovieBookingPageState();
}

class _MovieBookingPageState extends State<MovieBookingPage> {
  List<String> languages = [
    "All",
    "Tamil",
    "English",
    "Hindi",
    "Malayalam",
    "Telugu",
    "chinese",
    "Koren",
  ];

  final movieDetail = [
    {
      "movieName": "Vedhalam",
      "Language": "Tamil",
      "Percentage": "93%",
      "url": "https://images.justwatch.com/backdrop/198976271/s1440/vedhalam",
    },
    {
      "movieName": "WonderWomen",
      "Language": "English",
      "Percentage": "96%",
      "url":
          "https://variety.com/wp-content/uploads/2019/04/wonder-woman-1984.jpg?w=1000",
    },
    {
      "movieName": "Raa One",
      "Language": "Hindi",
      "Percentage": "73%",
      "url": "https://i.ytimg.com/vi/whHItaSWiTU/maxresdefault.jpg",
    },
    {
      "movieName": "Master",
      "Language": "Tamil",
      "Percentage": "90%",
      "url":
          "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/01/26/891223-thalapthy-vijay-vijay-sethupathi-master-third-look.jpg"
    },
    {
      "movieName": "Avengers",
      "Language": "English",
      "Percentage": "99%",
      "url": "https://i.ytimg.com/vi/QwievZ1Tx-8/maxresdefault.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () => Navigator.pop(context, true),
        ),
        title: Center(
          child: Text(
            "Bangalore👇",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Image.network(
                    "https://www.decatur-parks.org/the-arts/wp-content/uploads/sites/2/2018/05/WILD-WEST-TAMING-MOVIE-POSTER-LONG.jpg",
                  ),
                ),
              ],
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: ButtonTheme(
                    minWidth: 150,
                    height: 50,
                    child: RaisedButton.icon(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.lightBlue[50],
                      onPressed: () {},
                      icon: Icon(
                        Icons.movie,
                        color: Colors.lightBlue[400],
                      ),
                      label: Text(
                        "Movies",
                        style: TextStyle(color: Colors.lightBlue[400]),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ButtonTheme(
                    minWidth: 150,
                    height: 50,
                    child: RaisedButton.icon(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.yellow[100],
                      onPressed: () {},
                      icon: Icon(
                        Icons.monetization_on,
                        color: Colors.brown[400],
                      ),
                      label: Text(
                        "Offers",
                        style: TextStyle(color: Colors.brown[400]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 30),
              child: Text(
                "Watch Content on the go",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  child: Image.network(
                    "https://i.pinimg.com/originals/34/58/66/34586663e648a40921be44fa1a38f336.png",
                    height: 70,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text("Netflix"),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 30,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: languages.length,
                  itemBuilder: (context, i) {
                    return Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10),
                      child: ButtonTheme(
                        minWidth: 50,
                        child: RaisedButton(
                          onPressed: () => null,
                          color: i == 0 ? Colors.blue : Colors.white,
                          child: Text(languages[i]),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: movieDetail.length,
                itemBuilder: (context, i) {
                  return Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          children: [
                            Image.network(
                              movieDetail[i]['url'],
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Container(
                                height: 30,
                                width: 50,
                                child: Row(
                                  children: [
                                    Text("❤ "),
                                    Text(
                                      movieDetail[i]['Percentage'],
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: ListTile(
                            title: Text(
                              movieDetail[i]['movieName'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(movieDetail[i]['Language']),
                            trailing: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: Colors.blue),
                              ),
                              color: Colors.white,
                              onPressed: () {},
                              child: Text(
                                "Book",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
