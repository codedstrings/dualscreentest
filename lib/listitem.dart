import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_change_test/screens/screen2.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

Widget listitem(String text) {
  return GestureDetector(
      onTap: () {
        BuildContext context;
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => VideoPlayerScreen(),
          ),
        );
        // Within the `FirstRoute` widget
      },
      child: Card(
          elevation: 10,
          child: SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          )));
}

Widget thumbnailitem(var vidurl) {
  //var url = 'https://www.youtube.com/watch?v=V89BOZhJFlI';
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(vidurl),
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  return Card(
      /*  onTap: () {

                         
                          BuildContext context;
                                                    Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) => VideoPlayerScreen(),
                          ),
                        );
                        // Within the `FirstRoute` widget
  
                      }, */

      child: SizedBox(
    height: 300,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Center(
        child: YoutubePlayer(
          controller: _controller,
          liveUIColor: Colors.amber,
        ),
      ),
    ),
  ));
}


Widget thumbnail2(var vidurl){
  
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: YoutubePlayer.convertUrlToId(vidurl),
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  return Center(
    child: Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
    child: YoutubePlayer(
          controller: _controller,
          liveUIColor: Colors.amber,
        ),
    )
  );
   
 
}