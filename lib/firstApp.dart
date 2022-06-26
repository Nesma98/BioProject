import 'dart:html';
// ignore: unnecessary_import
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter '),
          centerTitle: true,
          elevation: 8,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              color: Colors.blue.shade500,
              width: 2.5,
            ),
          ),
          toolbarHeight: 56,
          // leading: InkWell(onTap: () {}, child: Icon(Icons.menu)),
          // leading: GestureDetector(
          //   onTap: () {},
          //   child: Icon(Icons.menu),
          // ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            // iconSize: 30,
          ),

          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.logout),
            // ),
            PopupMenuButton<int>(
              elevation: 8,
              tooltip: 'menu',
              offset: Offset(0, 40),
              color: Colors.white,
              onSelected: (int value) {
                print('Value $value');
              },
              icon: Icon(Icons.more_horiz_sharp),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('About'),
                    value: 1,
                    onTap: () {},
                  ),
                  PopupMenuItem(
                    child: Text('Search'),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text('Call Me'),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text('LogOut'),
                    value: 4,
                  ),
                ];
              },
            )
          ],
        ),
        body: Stack(
          children: [
            Image.network(
              'https://cdn.britannica.com/92/177992-050-AED0DC28/Dome-of-the-Rock-Temple-Mount-Jerusalem.jpg',
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // Image(
            //   height: double.infinity,
            //   fit: BoxFit.cover,
            //   image: NetworkImage(
            //       'https://morningg.cc/wp-content/uploads/2018/08/3527.jpg'),
            // ),
            // Align(
            //   alignment: Alignment.center,
            //   child: Text(
            //     'Flutter - Elancer',
            //     style: TextStyle(
            //       fontFamily: 'Gemunu',
            //       fontSize: 25,
            //       color: Colors.blue.shade900,
            //       fontWeight: FontWeight.bold,
            //       fontStyle: FontStyle.italic,
            //       decoration: TextDecoration.underline,
            //       backgroundColor: Colors.grey.shade300,
            //       wordSpacing: 9,
            //     ),
            //   ),
            // ),

            Positioned(
              bottom: 10,
              right: 10,
              left: 10,
              child: Container(
                color: Colors.red,
                alignment: AlignmentDirectional.bottomCenter,
                child: Text(
                  'Flutter - Elancer',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
