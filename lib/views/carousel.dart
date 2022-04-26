// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:io';

import 'package:blockparty_compass/default_values/design.dart';
import 'package:blockparty_compass/views/stats.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselRoute extends StatefulWidget {
  const CarouselRoute({Key? key}) : super(key: key);

  @override
  State<CarouselRoute> createState() => _CarouselRouteState();
}

class _CarouselRouteState extends State<CarouselRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: StyleSheet.darkNavy900,
        body: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: StyleSheet.darkNavy900,
              child: Center(
                child: Material(
                  elevation: 5.0,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: StyleSheet.darkNavy700,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: Column(
                              children: [
                                Container(
                                  child: FaIcon(
                                    FontAwesomeIcons.chartBar,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                ),
                                Container(
                                  child: Text(
                                    "Stats",
                                    style: GoogleFonts.rubik(
                                      fontSize: 28,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          ),
                          Container(
                            child: Center(
                              child: FittedBox(
                                child: Material(
                                  borderRadius: BorderRadius.circular(25),
                                  elevation: 5.0,
                                  child: ElevatedButton(
                                    child: Text(
                                      "GO",
                                      style: GoogleFonts.rubik(
                                        fontSize: 28,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              StatsRoute(),
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                        overlayColor:
                                            MaterialStateProperty.resolveWith(
                                          (states) {
                                            return states.contains(
                                                    MaterialState.pressed)
                                                ? StyleSheet.darkNavy700
                                                : null;
                                          },
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                          (states) {
                                            return StyleSheet.darkNavy800;
                                          },
                                        ),
                                        fixedSize:
                                            MaterialStateProperty.resolveWith(
                                          (states) {
                                            return Size(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1);
                                          },
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: BorderSide(
                                                  color: Colors.transparent)),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      )),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: StyleSheet.darkNavy900,
              child: Center(
                child: Material(
                  elevation: 5.0,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: StyleSheet.yellow700,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: Column(
                              children: [
                                Container(
                                  child: FaIcon(
                                    FontAwesomeIcons.bars,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                ),
                                Container(
                                  child: Text(
                                    "Collections",
                                    style: GoogleFonts.rubik(
                                      fontSize: 28,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          ),
                          Container(
                            child: Center(
                              child: FittedBox(
                                child: Material(
                                  borderRadius: BorderRadius.circular(25),
                                  elevation: 5.0,
                                  child: ElevatedButton(
                                    child: Text(
                                      "GO",
                                      style: GoogleFonts.rubik(
                                        fontSize: 28,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              CarouselRoute(),
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                        overlayColor:
                                            MaterialStateProperty.resolveWith(
                                          (states) {
                                            return states.contains(
                                                    MaterialState.pressed)
                                                ? StyleSheet.yellow700
                                                : null;
                                          },
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                          (states) {
                                            return StyleSheet.yellow800;
                                          },
                                        ),
                                        fixedSize:
                                            MaterialStateProperty.resolveWith(
                                          (states) {
                                            return Size(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1);
                                          },
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: BorderSide(
                                                  color: Colors.transparent)),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      )),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: StyleSheet.darkNavy900,
              child: Center(
                child: Material(
                  elevation: 5.0,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: StyleSheet.teal700,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            child: Column(
                              children: [
                                Container(
                                  child: FaIcon(
                                    FontAwesomeIcons.map,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                ),
                                Container(
                                  child: Text(
                                    "Roadmap",
                                    style: GoogleFonts.rubik(
                                      fontSize: 28,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                            ),
                          ),
                          Container(
                            child: Center(
                              child: FittedBox(
                                child: Material(
                                  borderRadius: BorderRadius.circular(25),
                                  elevation: 5.0,
                                  child: ElevatedButton(
                                    child: Text(
                                      "GO",
                                      style: GoogleFonts.rubik(
                                        fontSize: 28,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              CarouselRoute(),
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                        overlayColor:
                                            MaterialStateProperty.resolveWith(
                                          (states) {
                                            return states.contains(
                                                    MaterialState.pressed)
                                                ? StyleSheet.teal700
                                                : null;
                                          },
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                          (states) {
                                            return StyleSheet.teal800;
                                          },
                                        ),
                                        fixedSize:
                                            MaterialStateProperty.resolveWith(
                                          (states) {
                                            return Size(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1);
                                          },
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: BorderSide(
                                                  color: Colors.transparent)),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      )),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ));
  }
}
