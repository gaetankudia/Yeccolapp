import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yeccolapp/models/user.dart';
import 'package:yeccolapp/utils/colors.dart';
import 'package:yeccolapp/_routing/routes.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  final User user = users[0];

  @override
  Widget build(BuildContext context) {
    final hr = Divider();
    final userStats = Positioned(
      bottom: 10.0,
      left: 40.0,
      right: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildUserStats('Cours', '12'),
          _buildUserStats('Concours', '4'),
          _buildUserStats('Livres', '19'),
        ],
      ),
    );

    final userImage = Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(user.photo),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
      ),
    );

    final userNameLocation = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Yeccolapp",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            "Compte Actif",
            style: TextStyle(
              color: Colors.grey.withOpacity(0.6),
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );

    final userInfo = Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(8.0),
            shadowColor: Colors.white,
            child: Container(
              height: 220.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.2),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    userImage,
                    SizedBox(width: 10.0),
                    userNameLocation
                  ],
                ),
              ),
            ),
          ),
        ),
        userStats
      ],
    );

    final secondCard = Padding(
      padding: EdgeInsets.only(right: 20.0, left: 20.0, bottom: 30.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(8.0),
        shadowColor: Colors.white,
        child: Container(
          height: 360.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: <Widget>[
              _buildIconTile(Icons.note, Colors.red, 'Mes Cours',context, coursViewRoute),
              hr,
              _buildIconTile(LineIcons.book, Colors.amberAccent, 'Mes Livres',context, livresViewRoute),
              hr,
              _buildIconTile(LineIcons.question_circle, Colors.greenAccent, 'Je participe au Concours',context, concoursViewRoute),
               hr,
              _buildIconTile(LineIcons.bell, Colors.lightBlue, 'Mes Resultats Jury catholiques',context, resultatsViewRoute),
              hr,
              _buildIconTile(LineIcons.archive, Colors.deepPurple, 'Mes Items',context, itemsViewRoute),
            ],
          ),
        ),
      ),
    );

   

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 350.0,
                      ),
                      Container(
                        height: 250.0,
                        decoration: BoxDecoration(gradient: secondaryGradient),
                      ),
                      Positioned(top: 100, right: 0, left: 0, child: userInfo)
                    ],
                  ),
                   secondCard, 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserStats(String name, String value) {
    return Column(
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
            color: Colors.grey.withOpacity(0.6),
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }

  Widget _buildIconTile(IconData icon, Color color, String title,BuildContext context, String routing) {
    
    return ListTile( 
      onTap: () => Navigator.pushNamed(context, routing),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
      leading: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
      trailing: Icon(LineIcons.chevron_circle_right),
    );
  }
}
