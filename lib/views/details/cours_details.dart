import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:yeccolapp/models/contenucours.dart';
import 'package:yeccolapp/utils/colors.dart';
import 'package:line_icons/line_icons.dart';

class CoursDetailsPage extends StatelessWidget {
  final int coursId;

  const CoursDetailsPage({Key key, this.coursId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Cours cours = listcours.singleWhere((cours) => cours.id == coursId);

    // final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final cancelBtn = Positioned(
      top: 50.0,
      left: 20.0,
      child: Container(
        height: 35.0,
        width: 35.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.withOpacity(0.5),
        ),
        child: IconButton(
          icon: Icon(LineIcons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context),
          iconSize: 20.0,
        ),
      ),
    );

    final leconImage = Stack(
      children: <Widget>[
        Hero(
          tag: cours.photo,
          child: Container(
            height: 350.0,
            width: deviceWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cours.photo),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        cancelBtn
      ],
    );

    final leconName = Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
        child: Row(
          children: <Widget>[
            Text(
              cours.name,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.0),
              height: 30.0,
              width: 60.0,
              decoration: BoxDecoration(
                  gradient: chatBubbleGradient,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      LineIcons.mars,
                      color: Colors.white,
                    ),
                    Text(
                      cours.age.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
 
    final aboutUser = Padding(
      padding: EdgeInsets.all(20.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Colors.white,
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: deviceWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          constraints: BoxConstraints(minHeight: 100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              Text(
                "A Propos du cours!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2.0,
              ), //${cours.name}
              Text(
                "Lorem ipsum dolor sit amet, consectetur  Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, consectetur cing elit. Vestibulum id neque libero. Donec finibus sem viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero.d neque libero. Donec finibus sem viverra Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra..",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              )
            ],
          ),
        ),
      ),
    );

    final hobbies = Padding(
      padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Colors.white,
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: deviceWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          constraints: BoxConstraints(minHeight: 100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Autres leçons",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
               
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            leconImage,
            leconName, 
            aboutUser,
            hobbies
          ],
        ),
      ),
    );
  }

  Widget _buildHobbiesCards(String name) {
    return Container(
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      margin: EdgeInsets.only(right: 5.0, bottom: 3.0),
      height: 30.0,
      constraints: BoxConstraints(maxWidth: 80.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.transparent,
        border: Border.all(color: Colors.grey, width: 2.0),
      ),
      child: Center(
          child: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      )),
    );
  }
}
