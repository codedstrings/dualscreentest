import 'package:flutter/material.dart';
import 'package:screen_change_test/listitem.dart';
import 'package:screen_change_test/screens/screen2.dart';

//Thumbnail scroll class
class ThumbnailScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.pink, title: Text("Thumbnails")), //appbar

        body: Container(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => VideoPlayerScreen(),  //route to second screen
                          ),
                        );
                      },
                      child: Card(
                          elevation: 10,
                          child: SizedBox(
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8),
                              child: Center(
                                child: Text(
                                  'Thumbnail 1',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ))),

                          //code for one card ends here, this card is inside a gesture detector which inturn is a children of listview widget
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => VideoPlayerScreen(),
                          ),
                        );
                      }, //end of 1
                      child: Card(
                          elevation: 10,
                          child: SizedBox(
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8),
                              child: Center(
                                child: Text(
                                  'Thumbnail 2',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ))),
                          //code for second card ends here
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => VideoPlayerScreen(),
                          ),
                        );
                      },
                      child: Card(
                          elevation: 10,
                          child: SizedBox(
                            height: 300,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 8),
                              child: Center(
                                child: Text(
                                  'Thumbnail 3',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ))),
                          //code for third card ends

                          listitem('Thumbnail 4'), // to pass 4th and 5th thumbnail card as a function(not completed yet)
                          listitem('Thumbnail 5'),
                ],
              )),
        ));
  }
}
//class ends