// ignore_for_file: prefer_const_constructors

import 'package:blockparty_compass/default_values/design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartRoute extends StatefulWidget {
  const StartRoute({Key? key}) : super(key: key);

  @override
  State<StartRoute> createState() => _StartRouteState();
}

class _StartRouteState extends State<StartRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleSheet.darkNavy900,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              children: [
                Center(
                  child: StyleSheet.logoImage,
                ),
                Container(
                  child: Text(
                    "COMPASS",
                    style: GoogleFonts.rubik(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 10,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
            alignment: Alignment.center,
          ),
          Container(
            child: Center(
              child: FittedBox(
                child: ElevatedButton(
                  child: Text(
                    "START",
                    style: GoogleFonts.rubik(
                      fontSize: 28,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w800,
                      letterSpacing: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                        (states) {
                          return states.contains(MaterialState.pressed)
                              ? StyleSheet.darkNavy700
                              : null;
                        },
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) {
                          return StyleSheet.darkNavy800;
                        },
                      ),
                      fixedSize: MaterialStateProperty.resolveWith(
                        (states) {
                          return Size(MediaQuery.of(context).size.width * 0.8,
                              MediaQuery.of(context).size.height * 0.1);
                        },
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(color: Colors.transparent)),
                      )),
                ),
              ),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
