import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen_demo/intro/into.dart';
import 'package:splash_screen_demo/splash_screen.dart';
import 'package:splash_screen_demo/current/current.dart';
import 'package:splash_screen_demo/resistance/resistance.dart';
import 'package:splash_screen_demo/voltage/voltage.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,  
      body: SafeArea(
        
        child: Stack(
          children: [
            
            Positioned(
              left: 24,
              right: 0,
              top: 18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>(SplashScreen()),),);
                              },
                              icon: Icon(Icons.keyboard_arrow_left),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 3),
                    child: Text(
                      "Select a",
                      style: GoogleFonts.montserrat(fontSize: 22),
                    ),
                  ),
                  Text(
                    "Plan To Learn",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        'Here are some inductory conepts that will help you to understand circuits'
                      ,
                        style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
                      ))
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 8,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Isometric _ Icons.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            
            Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              top: 180,
              child: Column(
                children: [
                  Expanded(
                      child: Row(children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            left: 15,
                            right: 8,
                            top: 0,
                            bottom: 6,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context,
                                 MaterialPageRoute(builder: (context)=>Intro(),),);
                              },
                              color: Colors.purple[400],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(160),
                              )),
                              child: 
                              Container(
                                       height: 150,
                                       width: 140,
                                      
                                       decoration: BoxDecoration(
                                       image: DecorationImage(
                                               image: AssetImage("assets/images/lolo.png"),fit: BoxFit.cover
                                              )),
                             ),

                              
                            ),
                          ),
                          Positioned(
                              left: 8,
                              right: 8,
                              top: 180,
                              bottom: 0,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        "Intro".toUpperCase(),
                                        style: GoogleFonts.montserrat(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),


                    ////////////////////////2////////////////////////
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            left: 8,
                            right: 15,
                            top: 0,
                            bottom: 6,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context,
                                 MaterialPageRoute(builder: (context)=>Current(),),);

                              },
                              color: Colors.red[400],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(24),
                                topRight: Radius.circular(160),
                                topLeft: Radius.circular(24),
                              )),
                              child: Container(
                                       height: 150,
                                       width: 140,
                                      
                                       decoration: BoxDecoration(
                                       image: DecorationImage(
                                               image: AssetImage("assets/images/o.png"),fit: BoxFit.cover
                                              )),
                             ),
                            ),
                          ),
                          Positioned(
                            left: 8,
                            right: 8,
                            top: 180,
                            bottom: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      "current".toUpperCase(),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
                  ////////////////////////////3//////////////////////////////
                  Expanded(
                      child: Row(children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            left: 15,
                            right: 8,
                            top: 0,
                            bottom: 4,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context,
                                 MaterialPageRoute(builder: (context)=>Voltage(),),);
                              },
                              color: Colors.teal[400],
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
                          Positioned(
                            left: 8,
                            right: 8,
                            top: 0,
                            bottom: 170,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      "Voltage".toUpperCase(),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ////////////////////////////4////////////////////////////
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            left: 8,
                            right: 15,
                            top: 0,
                            bottom: 4,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.push(context,
                                 MaterialPageRoute(builder: (context)=>Resistance(),),);
                              },
                              color: Colors.orange[200],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(24),
                                bottomRight: Radius.circular(160),
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(24),
                              )),
                              child: Container(
                                       height: 170,
                                       width: 170,
                                       decoration: BoxDecoration(
                                       image: DecorationImage(
                                               image: AssetImage("assets/images/l.png"),
                                              fit: BoxFit.cover)),
                             ),
                            ),
                                
                                  
                            ),
                          
                          Positioned(
                            left: 8,
                            right: 8,
                            top: 0,
                            bottom: 170,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      "Resistance".toUpperCase(),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Decorationimage {}
