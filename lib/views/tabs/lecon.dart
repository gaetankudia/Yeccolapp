import 'package:flutter/material.dart';
import 'package:yeccolapp/models/lecon.dart';
import 'package:yeccolapp/widgets/feed_card1.dart';
import 'package:yeccolapp/utils/colors.dart';
import 'package:line_icons/line_icons.dart';
import 'package:yeccolapp/widgets/feed_card2.dart';
import 'package:yeccolapp/widgets/feed_card3.dart';
import 'package:yeccolapp/_routing/routes.dart';
class LeconsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Leçons",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );
    final submitBtn = Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
        height: 60.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => Navigator.of(context).pushNamed(activateaccountViewRoute),
            child: Text(
              'Activer Mon compte',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
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
                    submitBtn,
                    FeedCard3(feed: feeds[0]),
                    SizedBox(
                      height: 10.0,
                    ),
                    FeedCard2(
                      feed: feeds[1],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FeedCard3(
                      feed: feeds[2],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FeedCard2(
                      feed: feeds[3],
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
