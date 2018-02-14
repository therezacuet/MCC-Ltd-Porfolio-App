import 'package:flutter/material.dart';
import 'package:mccltd_app/model/portfoliodata.dart';
import 'package:mccltd_app/ui/detail/DetailsAppBar.dart';
import 'package:mccltd_app/ui/detail/DetailsPageBody.dart';
import 'package:mccltd_app/ui/detail/DetailsPageHeader.dart';

class DetailPage extends StatelessWidget {

  final Portfolio portfolio;
  DetailPage(this.portfolio);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          /*new Container(
            color: const Color(0xFF736AB7),
            constraints: new BoxConstraints.expand(),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Hero(tag: "planet-hero-${portfolio.id}",
                  child: new Image.asset(
                    portfolio.image,
                    width: 250.0,
                    height: 250.0,
                  ),
                ),
              ],
            ),
          ),*/
          new DetailsPageBody(portfolio),
          new DetailAppBar(),
        ],
      )
    );
  }
}