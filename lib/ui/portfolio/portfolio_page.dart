import 'package:flutter/material.dart';
import 'portfolio_page_body.dart';

class HomePages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: new Color(0xFF413070),
          title: new Text("Portfolio",
          )
      ),
      body: new Column(
        children: <Widget>[

          new HomePageBody(),
        ],
      ),
    );
  }
}
