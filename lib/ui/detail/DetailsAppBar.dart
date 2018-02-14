import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(
          top: MediaQuery
              .of(context)
              .padding
              .top
      ),
      child: new Row(
        children: <Widget>[
          new BackButton(
              color: Colors.white,
          ),
        ],
      ),
    );
  }
}