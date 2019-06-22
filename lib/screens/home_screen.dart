import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  Widget buildCustomAppBar() {
    return Container(
      alignment: Alignment.centerRight,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
      child: Text('Login', style: TextStyle(color: Color.fromRGBO(253, 189, 189, 1.0)),),
    );
  }

  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('assets/logo.png', width: 50.0,),
        SizedBox(width: 20.0),
        Text('Hexagon', style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold
        ))
      ],
    );
  }

  Widget buildTextFields() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 10.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Username',
                contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                filled: true,
                fillColor: Colors.white
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                filled: true,
                fillColor: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildMainContent() {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        children: <Widget>[
          buildHeader(),
          buildTextFields(),
        ]
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.png'), fit: BoxFit.cover)
      ),
      child: Column(
        children: <Widget>[
          buildCustomAppBar(),
          buildMainContent()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }
}