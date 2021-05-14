import 'package:flutter/material.dart';
import 'package:screen_change_test/screens/screen2.dart';

Widget listitem(String text)
{
return  GestureDetector(
                      onTap: () {

                         
                          BuildContext context;
                                                    Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) => VideoPlayerScreen(),
                          ),
                        );
                        // Within the `FirstRoute` widget
  
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
                                  text,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          )));

}