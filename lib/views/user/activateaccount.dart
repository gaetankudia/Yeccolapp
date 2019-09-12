import 'package:flutter/material.dart';
import 'package:yeccolapp/_routing/routes.dart';
import 'package:yeccolapp/utils/colors.dart';
import 'package:line_icons/line_icons.dart';

class ActivateAccountPage extends StatefulWidget {
  @override
  _ActivateAccountPageState createState() => _ActivateAccountPageState();
}

class _ActivateAccountPageState extends State<ActivateAccountPage> {
  final _formKey = GlobalKey<FormState>();
   
 
  @override
  Widget build(BuildContext context) {
    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )
        ],
      ),
    );

    final pageTitle = Container(
      child: Text(
        "J'active Mon Compte.",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );

    final formFieldSpacing = SizedBox(
      height: 30.0,
    );

    final registerForm = Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            _buildFormField('Code', LineIcons.lock),
            formFieldSpacing, 
          ],
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
            onPressed: () => Navigator.of(context).pushNamed(lecon_enabledViewRoute),
            child: Text(
              'Activer',
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
          padding: EdgeInsets.only(top: 40.0),
          child: Column(
            children: <Widget>[
              appBar,
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle,
                    registerForm, 
                    submitBtn
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormField(String label, IconData icon) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(
          icon,
          color: Colors.black38,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),
      ),
      keyboardType: TextInputType.text,
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.black,
    );
  }
 
   
}
