import 'dart:html';
import 'package:flutter/cupertino.dart';
//import 'package:material_cupertino_search_bar/material_cupertino_search_bar.dart';
import 'package:flutter/material.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
          title: Text(widget.title),
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
                          Icon(
                            Icons.face,
                            size: 40,
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
            Container(
              height: 320,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
        height: 320,
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
                    height: 296,
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
