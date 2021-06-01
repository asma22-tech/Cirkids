import 'package:flutter/material.dart';
import 'package:splash_screen_demo/home_screen.dart';
import 'package:splash_screen_demo/splash_screen.dart';
import 'package:splash_screen_demo/voltage/voltageQuiz.dart';
import 'package:splash_screen_demo/voltage/voltagevideo.dart';

class Volt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class Voltage extends StatefulWidget {
  @override
  _VoltageState createState() => _VoltageState();
}

class _VoltageState extends State<Voltage> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.only(
                top: 64,
                right: 16,
                left: 16,
              ),
              height: deviceHeight / 4,
              decoration: BoxDecoration(
                color: Colors.teal[400],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_left),
                        iconSize: 32,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      Text(
                        "Voltage",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.security),
                        iconSize: 32,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ])
              ]),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            top: 16,
            child: Container(
              height: deviceHeight / 4.1,
              decoration: BoxDecoration(
                color: Colors.teal[400].withOpacity(0.5),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            top: 24,
            child: Container(
              height: deviceHeight / 4.1,
              decoration: BoxDecoration(
                color: Colors.teal[400].withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.only(
                top: 64,
                right: 16,
                left: 16,
              ),
              height: deviceHeight / 4,
              decoration: BoxDecoration(
                color: Colors.teal[400],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_left),
                            iconSize: 32,
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => (HomeScreen()),
                                ),
                              );
                            },
                          ),
                          Text(
                            "Voltage",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 22,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.home),
                            iconSize: 32,
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => (SplashScreen()),
                                ),
                              );
                            },
                          ),
                        ]),
                    TabBar(
                      controller: _tabController,
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 4,
                      indicatorColor: Colors.white,
                      tabs: <Widget>[
                        Tab(
                          text: "Video",
                        ),
                        Tab(
                          text: "Quiz",
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          Positioned(
            top: deviceHeight / 3.3,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              height: deviceHeight / 1.6,
              color: Colors.teal[100],
              child: TabBarView(controller: _tabController, children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                          child: Row(children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                left: 80,
                                right: 80,
                                top: 80,
                                bottom: 50,
                                child: RaisedButton(
                                  color: Colors.teal[400],
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => VideoVolt(),
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(160),
                                    bottomRight: Radius.circular(24),
                                    topRight: Radius.circular(24),
                                    topLeft: Radius.circular(24),
                                  )),
                                  child: Container(
                                       height: 150,
                                       width: 140,
                                      
                                       decoration: BoxDecoration(
                                       image: DecorationImage(
                                               image: AssetImage("assets/images/l2.png"),fit: BoxFit.cover
                                              )),
                             ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
                      ////////////////////////////3//////////////////////////////
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                          child: Row(children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                left: 80,
                                right: 80,
                                top: 80,
                                bottom: 50,
                                child: RaisedButton(
                                  color: Colors.teal[400],
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => VoltageQuiz(),
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(160),
                                    bottomRight: Radius.circular(24),
                                    topRight: Radius.circular(24),
                                    topLeft: Radius.circular(24),
                                  )),
                                  child: Container(
                                       height: 150,
                                       width: 140,
                                      
                                       decoration: BoxDecoration(
                                       image: DecorationImage(
                                               image: AssetImage("assets/images/l2.png"),fit: BoxFit.cover
                                              )),
                             ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
                      ////////////////////////////3//////////////////////////////
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
