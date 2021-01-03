import 'package:flutter/material.dart';
import 'package:paytm/movieBookingPage.dart';

class ChooseLocationPage extends StatefulWidget {
  @override
  _ChooseLocationPageState createState() => _ChooseLocationPageState();
}

class _ChooseLocationPageState extends State<ChooseLocationPage> {
  final places = [
    {
      "name": "Delhi",
      "url":
          "https://images.pexels.com/photos/1007427/pexels-photo-1007427.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    },
    {
      "name": "Mumbai",
      "url":
          "https://images.pexels.com/photos/3587030/pexels-photo-3587030.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    },
    {
      "name": "Jaipur",
      "url":
          "https://images.pexels.com/photos/3581369/pexels-photo-3581369.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    },
    {
      "name": "Rajastan",
      "url":
          "https://images.pexels.com/photos/1588032/pexels-photo-1588032.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    },
    {
      "name": "Tamilnadu",
      "url":
          "https://images.pexels.com/photos/5138790/pexels-photo-5138790.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    },
    {
      "name": "Bangalore",
      "url":
          "https://images.pexels.com/photos/739987/pexels-photo-739987.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    },
    {
      "name": "Kerala",
      "url":
          "https://images.pexels.com/photos/3370598/pexels-photo-3370598.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    },
    {
      "name": "Kashmir",
      "url":
          "https://images.pexels.com/photos/3974036/pexels-photo-3974036.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        title: Container(
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search Location", border: InputBorder.none),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            child: RaisedButton.icon(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(
                Icons.ac_unit,
                color: Colors.blue,
              ),
              label: Text(
                "Current Location",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "POPULAR CITIES",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: GridView.builder(
                itemCount: places.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 1,
                ),
                itemBuilder: (context, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        child: InkResponse(
                          onTap: () {
                            if (i == 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MovieBookingPage(),
                                ),
                              );
                            }
                          },
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              places[i]['url'],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        places[i]['name'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
