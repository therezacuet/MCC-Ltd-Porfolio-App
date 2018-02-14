import 'package:flutter/material.dart';
import 'package:mccltd_app/model/portfoliodata.dart';
import 'package:mccltd_app/ui/detail/DetailsPageHeader.dart';

class DetailsPageBody extends StatefulWidget {
  final Portfolio portfolio;
  DetailsPageBody(this.portfolio);
  @override
  _DetailsPageState createState() => new _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPageBody> {
  _createCircleBadge(IconData iconData, Color color) {
    return new Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: new CircleAvatar(
        backgroundColor: color,
        child: new Icon(
          iconData,
          color: Colors.white,
          size: 16.0,
        ),
        radius: 16.0,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var linearGradient = new BoxDecoration(
      gradient: new LinearGradient(
        begin: FractionalOffset.centerRight,
        end: FractionalOffset.bottomLeft,
        colors: [
          const Color(0xFF413070),
          const Color(0xFF2B264A),
        ],
      ),
    );
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return new Scaffold(
        body: new SingleChildScrollView(
        child: new Container(
          decoration: linearGradient,
          child: new Column(
            children: <Widget>[
              new DetailPageHeader(widget.portfolio),
              new Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 25.0
                  ),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        "OVERVIEW",
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  )
              ),
              new Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 25.0
                ),
                child: new Text(
                  widget.portfolio.description,
                  style:
                  textTheme.body1.copyWith(color: Colors.white70, fontSize: 16.0),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 16.0),
                child: new Row(
                  children: [
                    _createCircleBadge(Icons.beach_access,Colors.blueAccent),
                    _createCircleBadge(Icons.cloud, Colors.white12),
                    _createCircleBadge(Icons.shop, Colors.white12),
                  ],
                ),
              ),
              new Container(
                height: 100.0,
              )
            ],
          ),
        )
      )
    );
  }
}