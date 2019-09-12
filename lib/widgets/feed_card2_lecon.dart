import 'package:flutter/material.dart';
import 'package:yeccolapp/_routing/routes.dart';
import 'package:yeccolapp/models/lecon.dart';

class FeedCard2 extends StatelessWidget {
  final Feedlecons feed;

  const FeedCard2({Key key, this.feed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final userImage = Positioned(
      left: 0,
      top: 15.0,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, leconDetailsViewRoute,
            arguments: feed.id),
        child: Hero(
          tag: feed.leconImage,
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(14.0),
            child: Container(
              height: 120.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                image: DecorationImage(
                  image: AssetImage(feed.leconImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    
    final userName = Text(
      feed.name,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    );

    final descriptionText = Container(
      height: 80.0,
      child: Text(
        feed.description,
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w600,
          fontSize: 14.0,
        ),
      ),
    );

    final cardContent = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[ 
        userName,
        SizedBox(
          height: 5.0,
        ),
        descriptionText
      ],
    );

    return Container(
      height: 150.0,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(14.0),
              child: Container(
                padding: EdgeInsets.only(top: 20.0, left: 100.0),
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14.0),
                ),
                child: cardContent,
              ),
            ),
          ),
          userImage
        ],
      ),
    );
  }
}
