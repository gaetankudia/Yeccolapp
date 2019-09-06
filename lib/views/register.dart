import 'package:flutter/material.dart';
import 'package:yeccolapp/_routing/routes.dart';
import 'package:yeccolapp/utils/colors.dart';
import 'package:line_icons/line_icons.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  int _genderRadioBtnVal = -1;

  void _handleGenderChange(int value) {
    setState(() {
      _genderRadioBtnVal = value;
    });
  }

  List _classes = [
    "1ère Primaire",
    "2ème Primaire",
    "3ème Primaire",
    "4ème Primaire",
    "5ème Primaire",
    "6ème Primaire",
    "7ème Primaire",
    "8ème Primaire",
    "3ème Scientifique",
    "3ème Litteraire",
    "3ème Electricité",
    "3ème Electronique",
    "3ème Coupe et Couture",
    "3ème Ménuisierie",
    "3ème Commerciale Informatique",
    "4ème Scientifique",
    "4ème Litteraire",
    "4ème Electricité",
    "4ème Electronique",
    "4ème Coupe et Couture",
    "4ème Ménuisierie",
    "4ème Commerciale Informatique",
    "5ème Bio-Chimie",
    "5ème Math-Physique",
    "5ème Litteraire",
    "5ème Electricité",
    "5ème Electronique",
    "5ème Coupe et Couture",
    "5ème Ménuisierie",
    "5ème Commerciale Informatique",
    "6ème Bio-Chimie",
    "6ème Math-Physique",
    "6ème Litteraire",
    "6ème Electricité",
    "6ème Electronique",
    "6ème Coupe et Couture",
    "6ème Ménuisierie",
    "6ème Commerciale Informatique",

  ];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentClasse;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentClasse = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String laclasse in _classes) {
      items.add(new DropdownMenuItem(value: laclasse, child: new Text(laclasse)));
    }
    return items;
  }

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
        "Inscrivez-vous.",
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
            _buildFormField('Nom', LineIcons.user),
            formFieldSpacing,
            _buildFormField('Post-Nom', LineIcons.user),
            formFieldSpacing,
            _buildFormField('Prénom', LineIcons.user),
            formFieldSpacing,
            _buildFormField('Email', LineIcons.envelope),
            formFieldSpacing,
            _buildFormField('Téléphone', LineIcons.mobile_phone), 
            formFieldSpacing,
          ],
        ),
      ),
    );

    final classeinput = Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Selectionnez votre Classe: "),
          new Container(
            padding: new EdgeInsets.all(16.0),
          ),
          new DropdownButton(
            value: _currentClasse,
            items: _dropDownMenuItems,
            onChanged: changedDropDownItem,
          )
        ],
      ),
    );

    final gender = Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: Row(
        children: <Widget>[
          Radio(
            value: 0,
            groupValue: _genderRadioBtnVal,
            onChanged: _handleGenderChange,
          ),
          Text("Masculin"),
          Radio(
            value: 1,
            groupValue: _genderRadioBtnVal,
            onChanged: _handleGenderChange,
          ),
          Text("Feminin"),
        ],
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
            onPressed: () => Navigator.of(context).pushNamed(homeViewRoute),
            child: Text(
              'Créer compte',
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
                    classeinput,
                    gender,
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
 
  void changedDropDownItem(String selectedClasse) {
    setState(() {
      _currentClasse = selectedClasse;
    });
  }
}
