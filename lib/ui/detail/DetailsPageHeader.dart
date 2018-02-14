import 'package:flutter/material.dart';
import 'package:mccltd_app/ui/frienddetails/header/diagonally_cut_colored_image.dart';
import 'package:mccltd_app/model/portfoliodata.dart';
class DetailPageHeader extends StatelessWidget {
  static const BACKGROUND_IMAGE = 'assets/images/profile_header_background.png';
  final Portfolio portfolio;
  DetailPageHeader(this.portfolio);
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var followerStyle =
    textTheme.subhead.copyWith(color: const Color(0xBBFFFFFF));
    var screenWidth = MediaQuery.of(context).size.width;

    var diagonalBackground = new DiagonallyCutColoredImage(
      new Image.asset(
        BACKGROUND_IMAGE,
        width: screenWidth,
        height: 280.0,
        fit: BoxFit.cover,
      ),
      color: const Color(0xBB8338f4),
    );

    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
          horizontal: 16.0
      ),
      alignment: FractionalOffset.topCenter,
      child: new Hero(
        tag: "planet-hero-${portfolio.id}",
        child: new Image(
          image: new AssetImage(portfolio.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );
    final baseTextStyle = const TextStyle(
        fontFamily: 'Poppins'
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xffb6b2df),
        fontSize: 9.0,
        fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 12.0
    );
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.w600
    );

    final planetCardContent = new Container(
      //margin: new EdgeInsets.fromLTRB(76.0, 30.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 60.0),
          new Center(
            child: new Text(portfolio.name, style: headerTextStyle),
          ),

          new Container(height: 10.0),
          new Center(
            child: new Text(portfolio.location, style: subHeaderTextStyle),
          ),
        ],
      ),
    );
    final planetCard = new Container(
      child: planetCardContent,
      height: 180.0,
      margin: new EdgeInsets.only(left: 20.0,right:20.0,top: 40.0),
      decoration: new BoxDecoration(
        color: new Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black87,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return new Stack(
      children: [
        diagonalBackground,
        new Align(
          alignment: FractionalOffset.bottomCenter,
          heightFactor: 1.4,
          child: new Container(
            height: 180.0,
            margin: const EdgeInsets.symmetric(
              vertical: 16.0,

            ),
            child: new Stack(
              children: <Widget>[
                planetCard,
                planetThumbnail,
              ],
            ),
          ),

        ),
      ],
    );
  }
}
