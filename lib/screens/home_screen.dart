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

  Widget buildBody(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/background.png'), fit: BoxFit.cover)
      ),
      child: Column(
        children: <Widget>[
          buildCustomAppBar()
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