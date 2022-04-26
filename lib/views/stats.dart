// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_this

import 'package:blockparty_compass/default_values/design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsRoute extends StatefulWidget {
  const StatsRoute({Key? key}) : super(key: key);

  @override
  State<StatsRoute> createState() => _StatsRouteState();
}

class _StatsRouteState extends State<StatsRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleSheet.darkNavy700,
      body: ListView(
        children: [
          NumbersContainer(
            elements: [
              NumberElement(
                description: "NFT-Supply",
                data: "",
                backgroundColor: StyleSheet.darkNavy850,
              ),
              NumberElement(
                description: "Party Blocks",
                data: "2800",
              ),
              NumberElement(
                description: "Gen1 Residents",
                data: "400",
              ),
              NumberElement(
                description: "Gen2 Residents",
                data: "200",
              )
            ],
          ),
          NumbersContainer(
            elements: [
              NumberElement(
                description: "\$BLOCK-Data",
                data: "",
                backgroundColor: StyleSheet.teal850,
              ),
              NumberElement(
                description: "Initial Supply",
                data: "4'280'000",
                backgroundColor: StyleSheet.teal800,
              ),
              NumberElement(
                description: "Burnt \$BLOCK",
                data: "1'000'000",
                backgroundColor: StyleSheet.teal800,
              ),
            ],
            backgroundColor: StyleSheet.teal700,
          ),
          NumbersContainer(
            elements: [
              NumberElement(
                description: "Staking-Rewards",
                data: "",
                backgroundColor: StyleSheet.yellow850,
              ),
              NumberElement(
                description: "Per Party Block",
                data: "1.5  \$BLOCK/ Day",
                backgroundColor: StyleSheet.yellow800,
              ),
              NumberElement(
                description: "Per Gen1",
                data: "2.25 \$BLOCK/ Day",
                backgroundColor: StyleSheet.yellow800,
              ),
              NumberElement(
                description: "Per Gen2",
                data: "3 \$BLOCK/ Day",
                backgroundColor: StyleSheet.yellow800,
              ),
            ],
            backgroundColor: StyleSheet.yellow700,
          )
        ],
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}

class NumbersContainer extends StatelessWidget {
  List<Widget> elements;
  NumbersContainer(
      {this.elements = const <Widget>[],
      this.backgroundColor = StyleSheet.darkNavy750});
  Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Center(
        child: FittedBox(
          child: Container(
            child: Center(
              child: Column(
                children: elements,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: this.backgroundColor,
            ),
            padding: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}

class NumberElement extends StatelessWidget {
  NumberElement({
    this.description = "Description",
    this.data = "Data",
    this.backgroundColor = StyleSheet.darkNavy800,
    this.foregroundColor = Colors.white,
  });
  Color backgroundColor;
  Color foregroundColor;
  String description;
  String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Center(
          child: Row(
            children: [
              Text(
                description,
                textAlign: TextAlign.left,
                style: GoogleFonts.rubik(
                  fontSize: 24,
                  color: this.foregroundColor,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0,
                ),
              ),
              Text(
                data,
                textAlign: TextAlign.right,
                style: GoogleFonts.rubik(
                  fontSize: 24,
                  color: this.foregroundColor,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: this.backgroundColor,
        ),
      ),
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
    );
  }
}
