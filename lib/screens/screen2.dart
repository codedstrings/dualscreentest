import 'package:flutter/material.dart';

class VideoPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("PlayerScreen")
      ),      
    body: Column(children: [
      Text ("VideoPlayer to be imported ")
    ],),
    );

  }
}