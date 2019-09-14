import 'package:flutter/material.dart';
import 'package:yeccolapp/models/lecon.dart';  
import 'package:yeccolapp/widgets/feed_card2_lecon.dart';
import 'package:yeccolapp/widgets/feed_card3_lecon.dart'; 
class LeconsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Cours",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );
     return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          padding: EdgeInsets.only(top: 40.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle, 
                    FeedCard3(feed: feedslecon[0]),
                    SizedBox(
                      height: 10.0,
                    ),
                    FeedCard2(
                      feed: feedslecon[1],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FeedCard3(
                      feed: feedslecon[2],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FeedCard2(
                      feed: feedslecon[3],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
