import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: drawerfooter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class drawerfooter extends StatefulWidget {
  const drawerfooter({Key? key}) : super(key: key);

  @override
  _drawerfooterState createState() => _drawerfooterState();
}

class _drawerfooterState extends State<drawerfooter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mahis Drawer'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.blue,
        actions: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: SvgPicture.asset(
              '../assets/Asset1.svg',
              height: 80,
              width: 80,
            ),
          ),
        ],
      ),
      body: Center(
        child: AnimatedTextKit(animatedTexts: [
          TypewriterAnimatedText('Welcome',
              textStyle: TextStyle(fontSize: 30),
              speed: Duration(milliseconds: 500)),
          TypewriterAnimatedText('To',
              textStyle: TextStyle(fontSize: 30),
              speed: Duration(milliseconds: 400)),
          TypewriterAnimatedText('Madhuris City',
              textStyle: TextStyle(fontSize: 30),
              speed: Duration(milliseconds: 300)),
        ]),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                height: 142,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "../assets/images/KOLORO_1635047436925.jpg",
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(Icons.facebook),
              title: Text('Facebook'),
              selectedTileColor: Colors.red,
              focusColor: Colors.amber,
              hoverColor: Colors.black45,
              tileColor: Colors.yellow,
              onTap: () {
                launch('https://pub.dev/');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('GamePad'),
              tileColor: Colors.green,
              onTap: () {},
            ),
            ListTile(
              trailing: Icon(Icons.airplanemode_off_rounded),
              title: Text(''),
              tileColor: Colors.yellow,
              onTap: () {},
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.all(30)),
                      Center(
                        child: Center(
                          child: Text(
                            'AppMartBD',
                            style: TextStyle(
                              fontFamily: 'Cursive',
                              fontSize: 20,
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            launch(
                                'https://www.facebook.com/mahendronathroy.23/');
                          },
                          icon: Icon(Icons.facebook_outlined))
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.account_tree),
              title: Text('Account Tree'),
              tileColor: Colors.purple,
              focusColor: Colors.cyan,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
