// import 'dart:html';
import 'package:flutter/cupertino.dart';
//import 'package:material_cupertino_search_bar/material_cupertino_search_bar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Description(),
      // home: MyHomePage(title: 'Travel App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 160,
                      child: Row(
                        children: [
                          Image(
                            height: 40,
                            width: 45,
                            image: AssetImage("images/prodp.jpg"),
                          ),
                          Text(
                            "Welcome! Atik",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      CupertinoIcons.bell,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
            CupertinoSearchTextField(
              borderRadius: BorderRadius.circular(15),
              itemSize: 30,
              backgroundColor: Colors.white70,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Recommended:',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  container(
                      image: 'Dubrovnik_Croatia.jpg',
                      place: 'Dubrovnik,Croatia',
                      price: 1300),
                  container(
                      image: 'Giresun_Turkey.jpg',
                      place: 'Giresun,Turkey',
                      price: 2000),
                  container(
                      image: 'Hallstatt_Österreich.jpg',
                      place: 'Hallstatt,Österreich',
                      price: 1500),
                  container(
                      image: 'Miami_FL_USA.jpg',
                      place: 'Miami FL,USA',
                      price: 5000),
                  container(
                      image: 'Venise_Italie.jpg',
                      place: 'Venise,Italie',
                      price: 3000),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Top Destination',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 221,
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    topDest(
                      text1: "Dubrovnik",
                      text2: "Croatia",
                      image: 'Dubrovnik_Croatia.jpg',
                    ),
                    topDest(
                      text1: "Giresun",
                      text2: "Turkey",
                      image: 'Giresun_Turkey.jpg',
                    ),
                    topDest(
                      text1: "Hallstatt",
                      text2: "Österreich",
                      image: 'Hallstatt_Österreich.jpg',
                    ),
                    topDest(
                      text1: "Miami FL",
                      text2: "USA",
                      image: 'Miami_FL_USA.jpg',
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   height: 290,
            //   color: Colors.pink,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       topDest(
            //         text1: "Dubrovnik",
            //         text2: "Croatia",
            //         image: 'Dubrovnik_Croatia.jpg',
            //       ),
            //       topDest(
            //         text1: "Giresun",
            //         text2: "Turkey",
            //         image: 'Giresun_Turkey.jpg',
            //       ),
            //       topDest(
            //         text1: "Hallstatt",
            //         text2: "Österreich",
            //         image: 'Hallstatt_Österreich.jpg',
            //       ),
            //       topDest(
            //         text1: "Miami FL",
            //         text2: "USA",
            //         image: 'Miami_FL_USA.jpg',
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
        //Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.navigation_rounded),
              label: 'Navigate',
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'bookmark',
              //backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'people',
              //backgroundColor: Colors.blue,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
    // floatingActionButton: FloatingActionButton(
    //   onPressed: _incrementCounter,
    //   tooltip: 'Increment',
    //   child: Icon(Icons.add),
    // ),
  }
}

class topDest extends StatelessWidget {
  final String text1;
  final String text2;
  final String image;

  const topDest({
    Key? key,
    required this.text1,
    required this.text2,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 250,
        // color: Colors.red,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                fit: BoxFit.cover,
                width: 150,
                image: AssetImage('images/' + image),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    // alignment: Alignment.center,
                    height: 50,
                    width: 100,
                    //color: Colors.pink,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$text1",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // )
                        Text(
                          "$text2",
                          style: TextStyle(
                            //fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class container extends StatelessWidget {
  final String image;
  final int price;
  final String place;
  const container({
    Key? key,
    required this.image,
    required this.price,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 300,
        width: 270,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              //alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("images/" + image),
                    height: 276,
                    width: 270,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "$price",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        height: 220,
                        width: 100,
                        child: Text(
                          "$place",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      // child: Container(
      //   height: 320,
      //   width: 270,
      //   decoration: BoxDecoration(
      //     color: Colors.red,
      //     borderRadius: BorderRadius.circular(30),
      //   ),
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.circular(30),
      //     child: Image(
      //       fit: BoxFit.cover,
      //       image: AssetImage("images/" + image),
      //     ),
      //   ),
      // ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text("Hello")),
      // ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "About",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 100,
                      width: 400,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Gallery",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 144,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                container2(image: 'Dubrovnik_Croatia.jpg'),
                container2(image: 'Giresun_Turkey.jpg'),
                container2(image: 'Hallstatt_Österreich.jpg'),
                container2(image: 'Miami_FL_USA.jpg'),
                container2(image: 'Venise_Italie.jpg'),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 80,
            width: 450,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward),
              label: Text(
                "Book Now",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class container2 extends StatelessWidget {
  final String image;

  const container2({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 120,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              //alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("images/" + image),
                    height: 120,
                    width: 140,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
