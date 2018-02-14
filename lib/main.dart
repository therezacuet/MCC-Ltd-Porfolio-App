import 'package:flutter/material.dart';
import 'dart:math';
import 'package:mccltd_app/ui/friends/friends_page.dart';
import 'package:mccltd_app/contact.dart';
import 'ui/portfolio/portfolio_page.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(
      new MaterialApp(
          home: new HomePage(),
          debugShowCheckedModeBanner: false,
          routes: <String, WidgetBuilder> {
            '/contact': (BuildContext context) => new ContactsDemo(),
            '/android_team': (BuildContext context) => new FriendsPage(),
            '/portfolio': (BuildContext context) => new HomePages(),
          },
      ));
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.landscapeLeft,
      ]);
}

class HomePage extends StatefulWidget{
  // ignore: strong_mode_invalid_method_override
  HomePageState createState()=> new HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin{

  _createPillButton(
      String text, {
        Color backgroundColor = Colors.transparent,
        Color textColor = Colors.white70,
      }) {
      return new ClipRRect(
        borderRadius: new BorderRadius.circular(30.0),
        child: new MaterialButton(
          minWidth: 140.0,
          color: backgroundColor,
          textColor: textColor,
          onPressed: () {
            setState(() {
              Navigator.of(context).pushNamed('/android_team');
            });
          },
          child: new Text(text),
        ),
      );
  }

  static final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: new Color(0xFF413070),
          title: new Text("MCC Ltd",
          )
      ),
      drawer: new Drawer(
          child: new ListView(
            padding: const EdgeInsets.all(0.0),
            children: <Widget> [
              new Container(
                  child: new DrawerHeader(
                      child: new CircleAvatar(
                        backgroundImage: new AssetImage('assets/images/logo_mcc.png'),
                      )),
                  color: new Color(0xFF413070),
              ),

              new ListTile(
                leading: new Icon(Icons.shop,color: new Color(0xFF413070)),
                title: new Text('Portfolio'),
                onTap: () {
                  // change app state...
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed('/portfolio'); // closfe the drawer
                },
              ),
              new ListTile(
                leading: new Icon(Icons.contacts,color: new Color(0xFF413070)),
                title: new Text('Contact'),
                onTap: () {
                  // change app state...
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed('/contact'); // closfe the drawer
                },
              ),
              new Divider(),
              new ListTile(
                leading: new Icon(Icons.developer_board,color: new Color(0xFF413070)),
                title: new Text('Developer'),
                onTap: () {
                  Navigator.pop(context);
                  _scaffoldKey.currentState.showSnackBar(const SnackBar(
                      content: const Text('Rezaul Islam - Android Trainer and Developer at MCC Ltd.')
                  ));
                },
              ),
            ],
          )
      ),
      body: new Container(
        color: const Color(0xFF413070),
        child: new Column(
          children: <Widget>[
            new WavyHeaderImage(),
            new BodyContent(),
            new DecoratedBox(
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.white30),
                borderRadius: new BorderRadius.circular(30.0),
              ),
              child: _createPillButton(
                'MEET OUR NEW ANDROID TEAM',
                textColor: Colors.white70,

              ),

            ),
          ],

        ),

      ),

    );
  }
}

class BodyContent extends StatefulWidget {
    State createState() => new BodyContentState();
}

class BodyContentState extends State<BodyContent> with TickerProviderStateMixin{
  AnimationController controller;
  Animation<int> animation;
  int counter =0;
  int project =10;

  void initState(){
    super.initState();
    controller = new AnimationController(duration: new Duration(milliseconds: 100), vsync: this);
    animation = new StepTween(begin: 0, end: project).animate(new CurvedAnimation(parent: controller, curve: Curves.easeIn));
    animation.addListener((){
      this.setState((){
          counter++;
      });
    });

    animation.addStatusListener((AnimationStatus status){
      if (status == AnimationStatus.completed) {
        dispose();
      }
    });
    controller.repeat();
  }

  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 16.0,left: 20.0,right: 20.0),
                    child: new Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/project.png'),
                        ),
                        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.white30,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  new Padding(
                      padding: const EdgeInsets.only(top: 16.0,left: 20.0,right: 20.0),
                      child: new Text(
                        '10000+',style: new TextStyle(
                          color: Colors.white70,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                      ),
                      )
                  ),
                  new Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0,bottom: 40.0),

                      child: new Text(

                        'HOURS',style: new TextStyle(
                          color: Colors.white70,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                      ),
                      )
                  ),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 16.0,left: 20.0,right: 20.0),
                    child: new Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/client.png'),
                        ),
                        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.white30,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  new Padding(
                      padding: const EdgeInsets.only(top: 16.0,left: 20.0,right: 20.0),

                      child: new Text(

                        '150+',style: new TextStyle(
                          color: Colors.white70,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                      ),
                      )
                  ),
                  new Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0,bottom: 40.0),

                      child: new Text(

                        'CLIENTS',style: new TextStyle(
                          color: Colors.white70,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                      ),
                      )
                  ),
                ],
              ),

              new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.only(top: 16.0,left: 20.0,right: 20.0),
                    child: new Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/work.png'),

                        ),
                        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.white30,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  new Padding(
                      padding: const EdgeInsets.only(top: 16.0,left: 20.0,right: 20.0),
                      child: new Text(

                        '250+',style: new TextStyle(
                          color: Colors.white70,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                      ),
                      )
                  ),
                  new Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0,bottom: 40.0),

                      child: new Text(

                        'PROJECTS',style: new TextStyle(
                          color: Colors.white70,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600
                      ),
                      )
                  ),
                ],
              ),

            ],
          ),

        ],
      ),
    );
  }
}
class WavyHeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ClipPath(
      child: new Image.asset('assets/images/about.jpg'),
      clipper: new BottomWaveClipper(),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = new Offset(size.width / 4, size.height);
    var firstEndPoint = new Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    new Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = new Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
@override
Path getClip(Size size) {
  Path path = new Path();

  // Draw a straight line from current point to the bottom left corner.
  path.lineTo(0.0, size.height);

  // Draw a straight line from current point to the top right corner.
  path.lineTo(size.width, 0.0);

  // Draws a straight line from current point to the first point of the path.
  // In this case (0, 0), since that's where the paths start by default.
  path.close();
  return path;
}

//animation
class Countdown extends AnimatedWidget {
  Countdown({ Key key, this.animation }) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context){
    return new Text(
      animation.value.toString(),
      style: new TextStyle(fontSize: 150.0),
    );
  }
}

